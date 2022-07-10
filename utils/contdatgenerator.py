import numpy as np

def H2PhiToMF(phi):
    """Function to convert a H2 Equivalence Ratio into Mass Fractions of H2, O2 and N2"""

    air_mass_fractions = {
        "O2": 0.21,
        "N2": 0.79
    }
    r = air_mass_fractions["N2"]/air_mass_fractions["O2"] #ratio of N2 to O2 i.e. rN2 for every O2

    molar_mass = {
        "H2": 1.00784*2,
        "O2": 15.999*2,
        "N2": 14.0067*2
    }

    #Stoichometric: 2H2 + O2 + rN2 -> 2H2O + rN2
    #AFR_stoich=(m_air/m_fuel)_stoich
    m_air_stoich = molar_mass["O2"]+r*molar_mass["N2"]
    m_fuel_stoich = 2*molar_mass["H2"]
    AFR_stoich = m_air_stoich/m_fuel_stoich; #34.1 approx

    #AFR=AFR_stoich/phi
    AFR = AFR_stoich/phi

    #m_air = m_fuel*AFR
    #m_air + m_fuel = 1
    m_fuel = 1/(AFR+1)
    m_air = 1-m_fuel
    mass_fractions = {
        "H2": m_fuel,
        "O2": m_air*air_mass_fractions["O2"],
        "N2": m_air*air_mass_fractions["N2"]
    }

    return mass_fractions

def createMFfile(output_file, phis, mass_fractions_array):
    """Function to output an array of mass fractions of H2,O2,N2 for differing phi into a file"""

    #write to file
    with open(output_file,"a+") as mf_file:
        mf_file.write("  phi   :        H2                O2               N2\n")
        for i, phi in enumerate(phis):
            mf = mass_fractions_array[i]
            mf_file.write("{:.3f}   |    {:.9f}      {:.9f}      {:.9f}\n".format(phi,mf["H2"],mf["O2"],mf["N2"]))

def createContdat(template_file, output_file, cold_start, adaptive, mass_fractions):
    """Function to create cont dat file for a given mass fraction of H2,O2,N2"""

    if cold_start == True: cs = 0
    else: cs = 1
    if adaptive == True: adap = 1
    else: adap = 0

    with open(template_file) as contdat_template:
        template = contdat_template.read()

    #format 1e4 to 1D4 and also appropriate amount of digits
    f_mass_fractions = {}
    for key,value in mass_fractions.items():
        fraction_string = "{:.8e}".format(value)

        if value > 0.1:
            x = -4
            sci = "D-1"
        elif value > 0.01 and value < 0.1:
            x = -5
            sci = "D-2"
        elif value > 0.001 and value < 0.01:
            x = -6
            sci = "D-3"

        fraction_string = fraction_string[:x]
        fraction_string = fraction_string + sci

        f_mass_fractions[key] = fraction_string;

    #add values to template
    contdat = template.format(
        adap,
        cs,
        f_mass_fractions["H2"],
        f_mass_fractions["O2"],
        f_mass_fractions["N2"],
        f_mass_fractions["H2"],
        f_mass_fractions["O2"],
        f_mass_fractions["N2"],
    )

    #write to file
    with open(output_file,"a+") as contdat_file:
        contdat_file.write(contdat)

if __name__=="__main__":
    steps='800k'
    cold_start = False
    adaptive = True

    #select template file
    if adaptive == True: adap = 'adap'
    else: adap = 'fix'

    template_file='cont_template_{}.dat'.format(steps)

    #generate phi
    phis = np.arange(0.3,2.1,0.1)

    #generate mass fractions
    mfs = []
    for phi in phis:
        mfs.append(H2PhiToMF(phi))

    #output mass fractions to file
    #createMFfile("phi_mf.txt",phis,mfs)
    
    #create contdat for given mass fraction
    for phi in phis:
        file_name = 'cont_{:03d}_{}_{}.dat'.format(int(round(phi*100)),steps,adap)
        createContdat(template_file,file_name,cold_start,adaptive,H2PhiToMF(phi))