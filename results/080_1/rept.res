*******************************************************************************
**                                                                           **
**                  DIRECT NUMERICAL SIMULATION CODE HAMISH                  **
**                                                                           **
**                               Stewart Cant                                **
**                                                                           **
**                Cambridge University Engineering Department                **
**                                                                           **
*******************************************************************************

 ===========
 REPORT FILE
 ===========

-------------------------------------------------------------------------------

 Number of processors: Max:        12288
                       Actual:         1

-------------------------------------------------------------------------------

 Control data:
 ------------

 Global domain size (x,y,z) in metres:
  1.0000E-02  0.0000E+00  0.0000E+00

 Global cells (nx) initial, base/max levels, spatial step switch
    2048       5      18       0

 Time step, start step, no of steps, time step switch:
  1.0000E-12       1  800000       1

 Steps between dumps, reports, stats, results, t-history;
   dump output switch, results output switch:
  800000    8000    8000    8000    8000       1       1

 Cold start switch, dump input switch:
       1       1

 Initial turbulence generator
   switch, random seed; turbulence parameters Rij; L:
       0      -1
  1.0000E+00  1.0000E+00  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  5.0000E-04

 Initial mesh adaption switch, flame generator switch:
       0       0

 Default initial conditions
 pressure, temperature, u,v,w, level set
  1.0000E+05  3.0000E+02  1.8900E+00  0.0000E+00  0.0000E+00  0.0000E+00
 species mass fractions
      1  2.2936922E-02
      2  2.0518325E-01
      3  0.0000000E+00
      4  0.0000000E+00
      5  0.0000000E+00
      6  0.0000000E+00
      7  0.0000000E+00
      8  0.0000000E+00
      9  7.7187983E-01
 Warning: INDATA: initial mass fractions do not sum to unity


 Global outer boundary condition types:
 x-left,right, y-left,right, z-left,right
   11         1       0       0       0       3
         1.8900E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.0000E+02
         1.2800E+00 -1.2800E+00  1.2800E+00  1.2800E+00  1.0000E-03
           1  2.2937E-02
           2  2.0518E-01
           9  7.7188E-01
   24         0       0       0       0       0
         1.0000E+05  2.8700E-01  1.0000E-03  0.0000E+00  0.0000E+00
    1         0       0       0       0       0
         0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    1         0       0       0       0       0
         0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    1         0       0       0       0       0
         0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    1         0       0       0       0       0
         0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

 Mesh refinement/derefinement criteria, interval, min/max levels
  1.0000E-01  2.5000E-02      10       5      18

 Mesh refinement scaling factors
 pressure, temperature, u,v,w, level set
  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 species mass fractions
      1  5.0000E-01
      2  5.0000E-01
      3  5.0000E-01
      4  5.0000E-01
      5  5.0000E-01
      6  5.0000E-01
      7  5.0000E-01
      8  5.0000E-01
      9  5.0000E-01

 Molecular transport control data
 switches: mix.av, Soret, Dufour; TDR max.mol.mass
      1      1      1      5.0000E+00

 Thermal radiation control data
 switch; reference temperature
      1      3.0000E+02

 End of initial data
 -------------------

-------------------------------------------------------------------------------

 Chemical data:
 -------------

 Number of species:
    9
 List of species:
   No.  Symbol         Mol. Mass      Lewis no.
    1   H2             2.0000E+00     3.0000E-01
    2   O2             3.2000E+01     1.1100E+00
    3   H2O            1.8000E+01     8.3000E-01
    4   O              1.6000E+01     7.0000E-01
    5   OH             1.7000E+01     7.3000E-01
    6   H              1.0000E+00     1.8000E-01
    7   HO2            3.3000E+01     1.1000E+00
    8   H2O2           3.4000E+01     1.1200E+00
    9   N2             2.8000E+01     1.0000E+00

 Species thermodynamic data:
  Reference pressure:   1.0000E+05
  Spec.  No of T intervals   Interval   T low       T high       No of coeffs
    1          1             1          3.0000E+02  3.0000E+03      11
    2          1             1          3.0000E+02  3.0000E+03      11
    3          1             1          3.0000E+02  3.0000E+03      11
    4          1             1          3.0000E+02  3.0000E+03      11
    5          1             1          3.0000E+02  3.0000E+03      11
    6          1             1          3.0000E+02  3.0000E+03      11
    7          1             1          3.0000E+02  3.0000E+03      11
    8          1             1          3.0000E+02  3.0000E+03      11
    9          1             1          3.0000E+02  3.0000E+03      11
 Cp coeffs by mass
  Spec.  T int.  Coeff no.  Coeff.
    1      1         1      1.2272332E+04
                     2      1.4894872E+01
                     3     -3.6573027E-02
                     4      4.3752268E-05
                     5     -2.5894169E-08
                     6      7.2778562E-12
                     7     -5.0610294E-16
                     8     -1.7216875E-19
                     9      2.8019379E-23
                    10     -4.0717602E+06
                    11     -7.7811933E+03
    2      1         1      9.2404499E+02
                     2     -3.9334724E-01
                     3      1.7050601E-03
                     4     -1.7862550E-06
                     5      6.2381211E-10
                     6      1.5543403E-13
                     7     -1.8311282E-16
                     8      5.0924291E-20
                     9     -4.8463516E-24
                    10     -2.6988927E+05
                    11      1.1985938E+03
    3      1         1      1.1548170E+03
                     2      5.3594003E+00
                     3     -1.6374929E-02
                     4      2.7790251E-05
                     5     -2.6133911E-08
                     6      1.4367181E-11
                     7     -4.6097323E-15
                     8      8.0024868E-19
                     9     -5.8089265E-23
                    10     -1.3917470E+07
                    11      2.8339805E+03
    4      1         1      1.6012555E+03
                     2     -1.4666667E+00
                     3      3.3325619E-03
                     4     -4.3513733E-06
                     5      3.4852082E-09
                     6     -1.7360815E-12
                     7      5.2330583E-16
                     8     -8.7210543E-20
                     9      6.1586917E-24
                    10      1.5139900E+07
                    11      1.2569781E+03
    5      1         1      1.5073557E+03
                     2      2.5091143E+00
                     3     -9.1594705E-03
                     4      1.5757416E-05
                     5     -1.4581456E-08
                     6      7.8479666E-12
                     7     -2.4663082E-15
                     8      4.2017397E-19
                     9     -2.9999576E-23
                    10      1.7881102E+06
                    11      1.7568586E+03
    6      1         1      2.0785500E+04
                     2      7.7989867E-08
                     3     -2.8254863E-10
                     4      5.3243459E-13
                     5     -5.7564571E-16
                     6      3.6844273E-19
                     7     -1.3733102E-22
                     8      2.7449074E-26
                     9     -2.2677992E-30
                    10      2.1177614E+08
                    11     -3.8255097E+03
    7      1         1      8.2856644E+02
                     2      6.2190040E-01
                     3      9.8250761E-04
                     4     -2.2462339E-06
                     5      1.9842312E-09
                     6     -9.4908115E-13
                     7      2.5668656E-16
                     8     -3.6872736E-20
                     9      2.1830040E-24
                    10      3.7086164E+04
                    11      2.0054525E+03
    8      1         1      7.6872242E+02
                     2      1.9954292E+00
                     3     -7.0906757E-04
                     4     -1.3611123E-06
                     5      2.2490008E-09
                     6     -1.5227746E-12
                     7      5.4528267E-16
                     8     -1.0119317E-19
                     9      7.6758538E-24
                    10     -4.3128929E+06
                    11      1.9141705E+03
    9      1         1      8.6299026E+02
                     2      1.6099308E+00
                     3     -6.0096882E-03
                     4      1.1705173E-05
                     5     -1.2172384E-08
                     6      7.2129037E-12
                     7     -2.4499930E-15
                     8      4.4450694E-19
                     9     -3.3407584E-23
                    10     -2.9387545E+05
                    11      1.6271586E+03

 Mass-specific Cp, Enthalpy, Entropy;  Molar Gibbs fn.:
  Spec.  T int.  Temp.       Cp          Enthalpy    Entropy     Molar Gibbs
    1      1 l   3.0000E+02  1.4438E+04  2.7932E+04  6.5385E+04 -1.2490E+01
           1 h   3.0000E+03  1.8555E+04  4.4359E+07  1.0140E+05 -1.5315E+01
    2      1 l   3.0000E+02  9.1658E+02  1.6687E+03  6.4131E+03 -2.1445E+01
           1 h   3.0000E+03  1.2452E+03  3.0642E+06  8.8869E+03 -2.4754E+01
    3      1 l   3.0000E+02  1.8593E+03 -1.3432E+07  1.0495E+04 -1.1644E+02
           1 h   3.0000E+03  3.0988E+03 -6.4025E+06  1.5914E+04 -3.3555E+01
    4      1 l   3.0000E+02  1.3681E+03  1.5577E+07  1.0067E+04  8.3765E+01
           1 h   3.0000E+03  1.3090E+03  1.9110E+07  1.3099E+04 -7.4299E+00
    5      1 l   3.0000E+02  1.7604E+03  2.2965E+06  1.0811E+04 -3.2362E+00
           1 h   3.0000E+03  2.1622E+03  7.5638E+06  1.5103E+04 -2.0207E+01
    6      1 l   3.0000E+02  2.0786E+04  2.1801E+08  1.1473E+05  7.6823E+01
           1 h   3.0000E+03  2.0786E+04  2.7413E+08  1.6259E+05 -3.0461E+00
    7      1 l   3.0000E+02  1.0569E+03  3.1879E+05  6.9456E+03 -2.0133E+01
           1 h   3.0000E+03  1.7911E+03  4.5281E+06  1.0223E+04 -2.9067E+01
    8      1 l   3.0000E+02  1.2817E+03 -4.0007E+06  6.8571E+03 -7.9360E+01
           1 h   3.0000E+03  2.3211E+03  1.4708E+06  1.1081E+04 -3.7791E+01
    9      1 l   3.0000E+02  1.0384E+03  1.9719E+03  6.8459E+03 -1.9817E+01
           1 h   3.0000E+03  1.3224E+03  3.3134E+06  9.5298E+03 -2.2855E+01

 Reaction mechanism:
   Number of steps:
   21
    1   O2         +H           ==  O          +OH         
    2   H2         +O           ==  OH         +H          
    3   H2         +OH          ==  H2O        +H          
    4   H2O        +O           ==  2 OH         
    5   H2         +M1          ==  2 H          +M1         
    6   O          +O          +M1          ==  O2         +M1         
    7   O          +H          +M1          ==  OH         +M1         
    8   OH         +H          +M1          ==  H2O        +M1         
    9   O2         +H          +M2          ==  HO2        +M2         
   10   H          +HO2         ==  H2         +O2         
   11   H          +HO2         ==  2 OH         
   12   O          +HO2         ==  O2         +OH         
   13   OH         +HO2         ==  O2         +H2O        
   14   HO2        +HO2         ==  O2         +H2O2       
   15   H2O2       +M1          ==  2 OH         +M1         
   16   H          +H2O2        ==  H2O        +OH         
   17   H          +H2O2        ==  H2         +HO2        
   18   O          +H2O2        ==  OH         +HO2        
   19   OH         +H2O2        ==  H2O        +HO2        
   20   HO2        +HO2         ==  O2         +H2O2       
   21   OH         +H2O2        ==  H2O        +HO2        

 Reaction parameters A, n, E:
    1    2.8898E+01   -4.1000E-01    8.3593E+03
    2    3.9279E+00    2.6700E+00    3.1675E+03
    3    1.2283E+01    1.5100E+00    1.7273E+03
    4    7.9963E+00    2.0200E+00    6.7479E+03
    5    3.8363E+01   -1.4000E+00    5.2563E+04
    6    2.2541E+01   -5.0000E-01    0.0000E+00
    7    2.9181E+01   -1.0000E+00    0.0000E+00
    8    3.8176E+01   -2.0000E+00    0.0000E+00
    9    2.1115E+01    6.0000E-01    0.0000E+00
   10    2.3533E+01    0.0000E+00    4.1333E+02
   11    2.4983E+01    0.0000E+00    1.5107E+02
   12    2.4205E+01    0.0000E+00    0.0000E+00
   13    2.4087E+01    0.0000E+00   -2.5179E+02
   14    2.6764E+01    0.0000E+00    6.0328E+03
   15    3.3318E+01    0.0000E+00    2.4373E+04
   16    2.3905E+01    0.0000E+00    1.9992E+03
   17    2.4599E+01    0.0000E+00    4.0034E+03
   18    9.1643E+00    2.0000E+00    1.9992E+03
   19    2.0723E+01    0.0000E+00    0.0000E+00
   20    1.8683E+01    0.0000E+00   -8.2082E+02
   21    2.7086E+01    0.0000E+00    4.8142E+03

 Third body efficiencies:
    1   M1        
    1   H2          2.5000E+00
    2   O2          1.0000E+00
    3   H2O         1.2000E+01
    4   O           1.0000E+00
    5   OH          1.0000E+00
    6   H           1.0000E+00
    7   HO2         1.0000E+00
    8   H2O2        1.0000E+00
    9   N2          1.0000E+00
    2   M2        
    1   H2          2.0000E+00
    2   O2          7.8000E-01
    3   H2O         1.1000E+01
    4   O           1.0000E+00
    5   OH          1.0000E+00
    6   H           1.0000E+00
    7   HO2         1.0000E+00
    8   H2O2        1.0000E+00
    9   N2          1.0000E+00

 Lindemann parameters:
    9    3.4088E+01   -1.7200E+00    2.6185E+02    8.0000E-01
   15    3.2419E+01    0.0000E+00    2.2913E+04    5.0000E-01

 End of chemical data
 --------------------

-------------------------------------------------------------------------------

 Transport data: mixture averaged transport
 --------------

 Reference pressure, temperature
  1.0000E+05  3.0000E+02

 Viscosity
    1    5
  2.7107126E-06  6.9127385E-06 -7.4098295E-07  6.5114453E-08 -2.3137946E-09
    2    5
  3.6949207E-06  1.9024078E-05 -2.3394625E-06  2.1456607E-07 -7.7008875E-09
    3    5
 -1.0002357E-06  1.1220213E-05  1.1500672E-07 -4.8891897E-08  2.0875294E-09
    4    5
  5.6967331E-06  2.1413602E-05 -2.5665636E-06  2.3534228E-07 -8.4640332E-09
    5    5
  5.8720563E-06  2.2072629E-05 -2.6455523E-06  2.4258520E-07 -8.7245231E-09
    6    5
  9.9597965E-07  9.5413620E-06 -1.1959549E-06  1.0894095E-07 -3.8866582E-09
    7    5
  3.7522104E-06  1.9319046E-05 -2.3757358E-06  2.1789291E-07 -7.8202896E-09
    8    5
  3.8086359E-06  1.9609564E-05 -2.4114620E-06  2.2116958E-07 -7.9378907E-09
    9    5
  3.6074817E-06  1.6199721E-05 -1.9606191E-06  1.7893816E-07 -6.4170127E-09

 Thermal conductivity
    1    5
  6.1267779E-02  1.3550284E-01 -9.8068901E-03  9.6168398E-04 -3.4419827E-05
    2    5
  2.0646827E-03  2.6338638E-02 -1.9263777E-03  1.4720594E-04 -4.8613114E-06
    3    5
 -2.9309695E-03  2.3796062E-02  5.1740361E-03 -5.1010179E-04  1.6631526E-05
    4    5
  1.2578674E-02  4.0335699E-02 -4.5778230E-03  4.0720836E-04 -1.4335788E-05
    5    5
  1.7237321E-02  4.4393721E-02 -3.2411438E-03  3.2018854E-04 -1.1451362E-05
    6    5
  4.0716060E-02  2.8839163E-01 -3.4524227E-02  3.0615979E-03 -1.0713026E-04
    7    5
 -2.1334055E-03  3.2850096E-02 -1.2920550E-03  6.1445662E-05 -1.5396719E-06
    8    5
 -5.7377427E-03  4.4211803E-02 -1.4089112E-03  2.3372758E-05  3.7054893E-07
    9    5
  4.6350248E-03  2.2603904E-02 -1.2366890E-03  7.5060595E-05 -2.2927656E-06

 Binary diffusion coefficient
    1    5
    1  4.4173450E+03  2.6726778E+03 -3.9085524E+02  3.5500334E+01 -1.2790911E+00
    2    5
    1  8.4211023E+03  4.2920548E+03 -5.7265017E+02  4.9445963E+01 -1.7360870E+00
    2  3.6010755E+04  1.2663573E+04 -1.2868176E+03  9.2027439E+01 -2.8691636E+00
    3    5
    1  5.5273239E+03  1.1166389E+03 -3.8823564E+01 -1.7314680E+00  1.5914820E-01
    2  2.7047207E+04  1.2174839E+03  5.1780853E+02 -7.4017172E+01  3.1832440E+00
    3  6.0086327E+04 -8.0608093E+03  2.1102904E+03 -2.1327008E+02  8.0494846E+00
    4    5
    1  6.1590516E+03  3.3476487E+03 -4.6551067E+02  4.1293365E+01 -1.4705679E+00
    2  2.2084472E+04  8.8550479E+03 -1.0051629E+03  7.8347616E+01 -2.5915303E+00
    3  2.3640100E+04  2.5155105E+03  2.3139117E+02 -4.5397975E+01  2.0941129E+00
    4  1.4121124E+04  6.2388281E+03 -7.5239909E+02  6.0861253E+01 -2.0595807E+00
    5    5
    1  6.1792784E+03  3.3586427E+03 -4.6703944E+02  4.1428976E+01 -1.4753973E+00
    2  2.2530653E+04  9.0339498E+03 -1.0254706E+03  7.9930503E+01 -2.6438879E+00
    3  2.4017036E+04  2.5556197E+03  2.3508065E+02 -4.6121836E+01  2.1275030E+00
    4  1.4333484E+04  6.3326504E+03 -7.6371401E+02  6.1776512E+01 -2.0905536E+00
    5  1.4555721E+04  6.4308367E+03 -7.7555522E+02  6.2734343E+01 -2.1229671E+00
    6    5
    1  3.2205344E+03  1.5114284E+03 -1.9258834E+02  1.6248018E+01 -5.6340365E-01
    2  6.0790647E+03  1.8155805E+03 -1.5405600E+02  9.1333501E+00 -2.4106845E-01
    3  7.2576100E+03  2.1475717E+02  1.4839779E+02 -2.0207445E+01  8.5763349E-01
    4  4.2127936E+03  1.4777425E+03 -1.4986557E+02  1.0702550E+01 -3.3332655E-01
    5  4.2201011E+03  1.4803058E+03 -1.5012553E+02  1.0721115E+01 -3.3390474E-01
    6  2.6377681E+03  6.3742258E+02 -3.8250757E+01  1.1529504E+00  8.4304845E-04
    7    5
    1  8.4286173E+03  4.2958850E+03 -5.7316120E+02  4.9490089E+01 -1.7376363E+00
    2  3.6286713E+04  1.2760617E+04 -1.2966787E+03  9.2732665E+01 -2.8911506E+00
    3  3.9262126E+04  2.3734612E+03  6.8423740E+02 -1.0336726E+02  4.5087742E+00
    4  2.2196858E+04  8.9001104E+03 -1.0102781E+03  7.8746320E+01 -2.6047183E+00
    5  2.2650043E+04  9.0818206E+03 -1.0309045E+03  8.0354054E+01 -2.6578979E+00
    6  6.0818580E+03  1.8164147E+03 -1.5412679E+02  9.1375469E+00 -2.4117922E-01
    7  3.6569100E+04  1.2859922E+04 -1.3067696E+03  9.3454322E+01 -2.9136499E+00
    8    5
    1  8.4357095E+03  4.2994998E+03 -5.7364349E+02  4.9531732E+01 -1.7390985E+00
    2  3.6552319E+04  1.2854020E+04 -1.3061700E+03  9.3411437E+01 -2.9123129E+00
    3  3.9467532E+04  2.3858783E+03  6.8781708E+02 -1.0390804E+02  4.5323625E+00
    4  2.2304216E+04  8.9431572E+03 -1.0151644E+03  7.9127189E+01 -2.6173165E+00
    5  2.2764145E+04  9.1275716E+03 -1.0360979E+03  8.0758849E+01 -2.6712874E+00
    6  6.0844902E+03  1.8172009E+03 -1.5419350E+02  9.1415016E+00 -2.4128360E-01
    7  3.6840973E+04  1.2955529E+04 -1.3164848E+03  9.4149109E+01 -2.9353114E+00
    8  3.7119025E+04  1.3053308E+04 -1.3264208E+03  9.4859684E+01 -2.9574652E+00
    9    5
    1  8.6826017E+03  4.5091252E+03 -6.0604984E+02  5.2450492E+01 -1.8437185E+00
    2  3.5621735E+04  1.3064776E+04 -1.3706503E+03  1.0021295E+02 -3.1747566E+00
    3  2.6830084E+04  1.6115837E+03  4.4293089E+02 -6.6486506E+01  2.8960242E+00
    4  2.2257051E+04  9.2317472E+03 -1.0692874E+03  8.4241068E+01 -2.8051248E+00
    5  2.2685702E+04  9.4095425E+03 -1.0898809E+03  8.5863476E+01 -2.8591490E+00
    6  6.2724319E+03  1.9767644E+03 -1.8033512E+02  1.1734004E+01 -3.3897389E-01
    7  3.5876302E+04  1.3158142E+04 -1.3804455E+03  1.0092911E+02 -3.1974448E+00
    8  3.6120948E+04  1.3247869E+04 -1.3898590E+03  1.0161737E+02 -3.2192486E+00
    9  3.5211804E+04  1.3601002E+04 -1.5086867E+03  1.1609619E+02 -3.8087407E+00

 Thermal diffusion ratio
    1    4
    2    4
    1 -4.8261676E+00  1.0357358E-01 -1.5185611E-02  7.2680166E-04
    3    4
    1 -4.4540143E+00  8.5029660E-02 -9.9754715E-03  4.1099244E-04
    2  1.5510672E+00 -1.3024243E-02  3.6868820E-04  1.7755561E-05
    4    4
    1 -4.2229959E+00  7.2263355E-02 -9.0837884E-03  3.5849392E-04
    2  1.8419566E+00 -4.2503433E-02  6.0040810E-03 -2.7967550E-04
    3  3.2692176E-01 -4.4524839E-03  3.8709202E-04 -1.2077210E-05
    5    4
    1 -4.2864996E+00  7.3350022E-02 -9.2203867E-03  3.6388481E-04
    2  1.6915928E+00 -3.9033765E-02  5.5139519E-03 -2.5684485E-04
    3  1.5879057E-01 -2.1626350E-03  1.8801612E-04 -5.8660736E-06
    4 -1.6708711E-01  3.9870286E-03 -5.8511101E-04  2.8064354E-05
    6    4
    1  1.8276775E+00 -3.6454524E-02  4.7008286E-03 -1.9599840E-04
    2  5.2227347E+00 -1.1784475E-01  1.5796124E-02 -7.1773782E-04
    3  4.9540739E+00 -3.6738764E-02  7.1761148E-04  5.8550200E-05
    4  4.8931163E+00 -1.1334570E-01  1.5642075E-02 -7.1763276E-04
    5  4.9293616E+00 -1.1418530E-01  1.5757942E-02 -7.2294856E-04
    7    4
    1 -4.8445530E+00  1.0396815E-01 -1.5243461E-02  7.2957043E-04
    2 -8.5315873E-02  1.9818650E-03 -2.7427618E-04  1.2618877E-05
    3 -1.6321123E+00  1.7368706E-02 -1.0931979E-03  2.0201333E-05
    4 -1.9171385E+00  4.4238267E-02 -6.2491455E-03  2.9109083E-04
    5 -1.7682783E+00  4.0803295E-02 -5.7639177E-03  2.6848848E-04
    6 -5.2326450E+00  1.1806837E-01 -1.5826097E-02  7.1909975E-04
    8    4
    1 -4.8619170E+00  1.0434079E-01 -1.5298098E-02  7.3218537E-04
    2 -1.6804642E-01  3.9036736E-03 -5.4024095E-04  2.4855364E-05
    3 -1.7074405E+00  1.8170339E-02 -1.1436532E-03  2.1133702E-05
    4 -1.9893131E+00  4.5903707E-02 -6.4844075E-03  3.0204954E-04
    5 -1.8419566E+00  4.2503433E-02 -6.0040810E-03  2.7967550E-04
    6 -5.2419890E+00  1.1827920E-01 -1.5854358E-02  7.2038386E-04
    7 -8.2769131E-02  1.9227049E-03 -2.6608883E-04  1.2242194E-05
    9    4
    1 -4.7403690E+00  1.0675587E-01 -1.6425103E-02  8.2494454E-04
    2  3.6970212E-01 -9.0121664E-03  1.3088089E-03 -6.3189059E-05
    3 -1.2042447E+00  1.0607508E-02 -3.1499006E-04 -1.5912879E-05
    4 -1.5070554E+00  3.6492772E-02 -5.4095660E-03  2.6442550E-04
    5 -1.3507681E+00  3.2708337E-02 -4.8485740E-03  2.3700360E-04
    6 -5.1667386E+00  1.1066503E-01 -1.3936376E-02  5.8184349E-04
    7  4.5455178E-01 -1.1080532E-02  1.6091913E-03 -7.7691466E-05
    8  5.3666436E-01 -1.3082177E-02  1.8998839E-03 -9.1726053E-05

          Mix viscosity     Conductivity      Prandtl no
          1.8301862E-05     5.0211860E-02     4.8139778E-01

          Diffusivity       Schmidt No        Lewis No          Thermal diff
    1     9.1847043E-05     1.9926458E-01     4.1392916E-01     0.0000000E+00
    2     2.2024771E-05     8.3096720E-01     1.7261550E+00     0.0000000E+00
    3     3.8025591E-05     4.8130382E-01     9.9980483E-01     0.0000000E+00
    4     3.5249071E-05     5.1921545E-01     1.0785581E+00     0.0000000E+00
    5     3.4627299E-05     5.2853855E-01     1.0979248E+00     0.0000000E+00
    6     1.2348230E-04     1.4821446E-01     3.0788356E-01     4.5195642E-01
    7     2.2740355E-05     8.0481867E-01     1.6718371E+00     0.0000000E+00
    8     2.2595027E-05     8.0999516E-01     1.6825901E+00     0.0000000E+00
    9     2.0372493E-05     8.9836142E-01     1.8661520E+00     0.0000000E+00

 End of transport data
 ---------------------

-------------------------------------------------------------------------------

 Thermal radiation data
 ----------------------

 Planck mean absorption coefficient data
     3     6
  6.8694800E-04 -1.5234900E-06  1.4178480E-09 -6.6209960E-13  1.5241500E-16
 -1.3734560E-20

 Reference ambient temperature:
  3.0000000E+02

 Planck mean absorption coefficients:
     3     H2O         3.4083182E-04

 End of radiation data
 ---------------------

-------------------------------------------------------------------------------

 Domain report
 -------------

 Global domain size:
     x,y,x: required:  1.0000E-02  0.0000E+00  0.0000E+00
     x,y,x:   actual:  1.0000E-02  0.0000E+00  0.0000E+00

 Base mesh:
     level: required:   5
     level:   actual:   5
     cell size:  3.1250E-04
     global cell count: x,y,x:       32        1        1

 Finest mesh:
     level:  18
     cell size:  3.8147E-08
     global cell count: x,y,x:   262144        1        1

 Initial mesh:
     level min,max:  11  11
     cell size max,min:  4.8828E-06  4.8828E-06
     global cell count min: x,y,x:     2048        1        1
     global cell count max: x,y,x:     2048        1        1

 Initial domain decomposition:

 Processor        Level      No of cells                                        
     ID             ID     at that level                                        
      0             11              2048
                            ------------
                                    2048

                            ------------
 No of cells in total:              2048


 End of domain report
 --------------------

-------------------------------------------------------------------------------

 Mesh connectivity report
 ------------------------

 Proc ID     Cells: interior        remote            total                     
      0                 2048             0             2048
                  ----------    ----------       ----------
      Totals:           2048             0             2048

 Min no of interior cells      2048  on proc         1
 Max no of interior cells      2048  on proc         1
 Min no of remote cells           0  on proc         1
 Max no of remote cells           0  on proc         1
 Min total no of cells         2048  on proc         1
 Max total no of cells         2048  on proc         1

 Min stencil size            4  on proc         1
 Max stencil size            4  on proc         1
 Min av stencil size      4.00  on proc         1
 Max av stencil size      4.00  on proc         1

 Min cell face hash table size            2  on proc         1
 Max cell face hash table size            2  on proc         1


 End of mesh connectivity report
 -------------------------------

-------------------------------------------------------------------------------

Time step number:       0
Elapsed time:   1.8691E-02;  next time step:  4.9448E-09
Latest dump at t-step:       0; dump ID:     1

Time step number:    8000
Elapsed time:   1.8731E-02;  next time step:  4.9476E-09

Time step number:   16000
Elapsed time:   1.8770E-02;  next time step:  4.9457E-09

Time step number:   24000
Elapsed time:   1.8810E-02;  next time step:  4.9451E-09

Time step number:   32000
Elapsed time:   1.8849E-02;  next time step:  4.9452E-09

Time step number:   40000
Elapsed time:   1.8889E-02;  next time step:  4.9451E-09

Time step number:   48000
Elapsed time:   1.8928E-02;  next time step:  4.9450E-09

Time step number:   56000
Elapsed time:   1.8968E-02;  next time step:  4.9449E-09

Time step number:   64000
Elapsed time:   1.9007E-02;  next time step:  4.9448E-09

Time step number:   72000
Elapsed time:   1.9047E-02;  next time step:  4.9447E-09

Time step number:   80000
Elapsed time:   1.9087E-02;  next time step:  4.9446E-09

Time step number:   88000
Elapsed time:   1.9126E-02;  next time step:  4.9445E-09

Time step number:   96000
Elapsed time:   1.9166E-02;  next time step:  4.9445E-09

Time step number:  104000
Elapsed time:   1.9205E-02;  next time step:  4.9444E-09

Time step number:  112000
Elapsed time:   1.9245E-02;  next time step:  4.9444E-09

Time step number:  120000
Elapsed time:   1.9284E-02;  next time step:  4.9443E-09

Time step number:  128000
Elapsed time:   1.9324E-02;  next time step:  4.9443E-09

Time step number:  136000
Elapsed time:   1.9363E-02;  next time step:  4.9442E-09

Time step number:  144000
Elapsed time:   1.9403E-02;  next time step:  4.9442E-09

Time step number:  152000
Elapsed time:   1.9443E-02;  next time step:  4.9442E-09

Time step number:  160000
Elapsed time:   1.9482E-02;  next time step:  4.9441E-09

Time step number:  168000
Elapsed time:   1.9522E-02;  next time step:  4.9441E-09

Time step number:  176000
Elapsed time:   1.9561E-02;  next time step:  4.9441E-09

Time step number:  184000
Elapsed time:   1.9601E-02;  next time step:  4.9440E-09

Time step number:  192000
Elapsed time:   1.9640E-02;  next time step:  4.9440E-09

Time step number:  200000
Elapsed time:   1.9680E-02;  next time step:  4.9440E-09

Time step number:  208000
Elapsed time:   1.9719E-02;  next time step:  4.9440E-09

Time step number:  216000
Elapsed time:   1.9759E-02;  next time step:  4.9440E-09

Time step number:  224000
Elapsed time:   1.9799E-02;  next time step:  4.9440E-09

Time step number:  232000
Elapsed time:   1.9838E-02;  next time step:  4.9439E-09

Time step number:  240000
Elapsed time:   1.9878E-02;  next time step:  4.9439E-09

Time step number:  248000
Elapsed time:   1.9917E-02;  next time step:  4.9439E-09

Time step number:  256000
Elapsed time:   1.9957E-02;  next time step:  4.9439E-09

Time step number:  264000
Elapsed time:   1.9996E-02;  next time step:  4.9439E-09

Time step number:  272000
Elapsed time:   2.0036E-02;  next time step:  4.9439E-09

Time step number:  280000
Elapsed time:   2.0075E-02;  next time step:  4.9439E-09

Time step number:  288000
Elapsed time:   2.0115E-02;  next time step:  4.9439E-09

Time step number:  296000
Elapsed time:   2.0155E-02;  next time step:  4.9439E-09

Time step number:  304000
Elapsed time:   2.0194E-02;  next time step:  4.9439E-09

Time step number:  312000
Elapsed time:   2.0234E-02;  next time step:  4.9439E-09

Time step number:  320000
Elapsed time:   2.0273E-02;  next time step:  4.9439E-09

Time step number:  328000
Elapsed time:   2.0313E-02;  next time step:  4.9439E-09

Time step number:  336000
Elapsed time:   2.0352E-02;  next time step:  4.9439E-09

Time step number:  344000
Elapsed time:   2.0392E-02;  next time step:  4.9439E-09

Time step number:  352000
Elapsed time:   2.0431E-02;  next time step:  4.9439E-09

Time step number:  360000
Elapsed time:   2.0471E-02;  next time step:  4.9440E-09

Time step number:  368000
Elapsed time:   2.0510E-02;  next time step:  4.9440E-09

Time step number:  376000
Elapsed time:   2.0550E-02;  next time step:  4.9440E-09

Time step number:  384000
Elapsed time:   2.0590E-02;  next time step:  4.9441E-09

Time step number:  392000
Elapsed time:   2.0629E-02;  next time step:  4.9442E-09

Time step number:  400000
Elapsed time:   2.0669E-02;  next time step:  4.9443E-09

Time step number:  408000
Elapsed time:   2.0708E-02;  next time step:  4.9445E-09

Time step number:  416000
Elapsed time:   2.0748E-02;  next time step:  4.9447E-09

Time step number:  424000
Elapsed time:   2.0787E-02;  next time step:  4.9450E-09

Time step number:  432000
Elapsed time:   2.0827E-02;  next time step:  4.9453E-09

Time step number:  440000
Elapsed time:   2.0867E-02;  next time step:  4.9457E-09

Time step number:  448000
Elapsed time:   2.0906E-02;  next time step:  4.9463E-09

Time step number:  456000
Elapsed time:   2.0946E-02;  next time step:  4.9470E-09

Time step number:  464000
Elapsed time:   2.0985E-02;  next time step:  4.9478E-09

Time step number:  472000
Elapsed time:   2.1025E-02;  next time step:  4.9489E-09

Time step number:  480000
Elapsed time:   2.1064E-02;  next time step:  4.9501E-09

Time step number:  488000
Elapsed time:   2.1104E-02;  next time step:  4.9516E-09

Time step number:  496000
Elapsed time:   2.1144E-02;  next time step:  4.9533E-09

Time step number:  504000
Elapsed time:   2.1183E-02;  next time step:  4.9552E-09

Time step number:  512000
Elapsed time:   2.1223E-02;  next time step:  4.9574E-09

Time step number:  520000
Elapsed time:   2.1263E-02;  next time step:  4.9599E-09

Time step number:  528000
Elapsed time:   2.1302E-02;  next time step:  4.9627E-09

Time step number:  536000
Elapsed time:   2.1342E-02;  next time step:  4.9658E-09

Time step number:  544000
Elapsed time:   2.1382E-02;  next time step:  4.9691E-09

Time step number:  552000
Elapsed time:   2.1421E-02;  next time step:  4.9727E-09

Time step number:  560000
Elapsed time:   2.1461E-02;  next time step:  4.9765E-09

Time step number:  568000
Elapsed time:   2.1501E-02;  next time step:  4.9805E-09

Time step number:  576000
Elapsed time:   2.1541E-02;  next time step:  4.9848E-09

Time step number:  584000
Elapsed time:   2.1581E-02;  next time step:  4.9891E-09

Time step number:  592000
Elapsed time:   2.1621E-02;  next time step:  4.9937E-09

Time step number:  600000
Elapsed time:   2.1661E-02;  next time step:  4.9983E-09

Time step number:  608000
Elapsed time:   2.1701E-02;  next time step:  5.0030E-09

Time step number:  616000
Elapsed time:   2.1741E-02;  next time step:  5.0077E-09

Time step number:  624000
Elapsed time:   2.1781E-02;  next time step:  5.0125E-09

Time step number:  632000
Elapsed time:   2.1821E-02;  next time step:  5.0172E-09

Time step number:  640000
Elapsed time:   2.1861E-02;  next time step:  5.0218E-09

Time step number:  648000
Elapsed time:   2.1901E-02;  next time step:  5.0264E-09

Time step number:  656000
Elapsed time:   2.1942E-02;  next time step:  5.0309E-09

Time step number:  664000
Elapsed time:   2.1982E-02;  next time step:  5.0353E-09

Time step number:  672000
Elapsed time:   2.2022E-02;  next time step:  5.0396E-09

Time step number:  680000
Elapsed time:   2.2063E-02;  next time step:  5.0437E-09

Time step number:  688000
Elapsed time:   2.2103E-02;  next time step:  5.0476E-09

Time step number:  696000
Elapsed time:   2.2143E-02;  next time step:  5.0514E-09

Time step number:  704000
Elapsed time:   2.2184E-02;  next time step:  5.0551E-09

Time step number:  712000
Elapsed time:   2.2224E-02;  next time step:  5.0585E-09

Time step number:  720000
Elapsed time:   2.2265E-02;  next time step:  5.0618E-09

Time step number:  728000
Elapsed time:   2.2305E-02;  next time step:  5.0649E-09

Time step number:  736000
Elapsed time:   2.2346E-02;  next time step:  5.0678E-09

Time step number:  744000
Elapsed time:   2.2386E-02;  next time step:  5.0706E-09

Time step number:  752000
Elapsed time:   2.2427E-02;  next time step:  5.0732E-09

Time step number:  760000
Elapsed time:   2.2467E-02;  next time step:  5.0757E-09

Time step number:  768000
Elapsed time:   2.2508E-02;  next time step:  5.0780E-09

Time step number:  776000
Elapsed time:   2.2549E-02;  next time step:  5.0801E-09

Time step number:  784000
Elapsed time:   2.2589E-02;  next time step:  5.0822E-09

Time step number:  792000
Elapsed time:   2.2630E-02;  next time step:  5.0841E-09

Time step number:  800000
Elapsed time:   2.2671E-02;  next time step:  5.0858E-09
Latest dump at t-step:  800000; dump ID:     0


 Hamish: normal termination of program
 -------------------------------------
