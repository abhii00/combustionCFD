PHI=100
STEPS=400k
ADAPTIVE=adap #set to adap or fix
DEF_VEL=2.06
VEL=( 2.06 )
i=1

# function to refresh hamish directory
function reset_dir {
	rm -r ./hamish_v1.4
	mkdir ./hamish_v1.4
	tar zxvf ./hamish_v1.4.tar --directory ./hamish_v1.4
	cd ./hamish_v1.4
	echo "----------CLEAN INSTALL OF HAMISH CREATED----------"
}

# function to acquire universal config files
function setup_uni_sim {
	sudo ldconfig
	./Allmake
	cp ./casefiles/1D/21step_abhi/com_hamish_21step_mavt_radn.h com_hamish.h
	cp ./casefiles/1D/21step_abhi/chem_21step.dat chem.dat
	cp ./casefiles/1D/21step_abhi/diff_21step.dat diff.dat
	cp ./casefiles/1D/21step_abhi/radn_21step.dat radn.dat
	echo "----------UNIVERSAL SIMULATION SET UP----------"
}

# function to acquire the specific config files
# params: 1. phi 2. vel 3. steps 4. adaptive
function setup_sim {
	cp ../inputs/cont_$1_$3_$4.dat cont.dat
	sed -i "s/${DEF_VEL}/${2}/g" cont.dat
	cp ../inputs/dmpi0000000.dat dmpi0000000.dat
	touch *.f
	make
	echo "----------$1 $2 $3 $4 SIMULATION SET UP----------"
}

# function save specific results files
# params: 1. phi 2. index 3. vel
function save_results {
	mkdir ../results/$1_$2
	cp ./rept.res ../results/$1_$2
	cp ./stat.res ../results/$1_$2
	cp ./time.res ../results/$1_$2
	cp ./dens*.res ../results/$1_$2
	cp ./uvel*.res ../results/$1_$2
	cp ./vvel*.res ../results/$1_$2
	cp ./wvel*.res ../results/$1_$2
	cp ./mass*.res ../results/$1_$2
	cp ./ener*.res ../results/$1_$2
	cp ./enth*.res ../results/$1_$2
	cp ./pres*.res ../results/$1_$2
	cp ./temp*.res ../results/$1_$2
	cp ./levl*.res ../results/$1_$2
	cp ./yf*.res ../results/$1_$2
	cp ./dmpi*.dat ../results/$1_$2
	cp ./cont.dat ../results/$1_$2
	rm ../inputs/dmpi0000000.dat
	cp ./dmpi0000000.dat ../inputs/dmpi0000000.dat
	gnuplot -persist <<-EOFMarker
		set style data lines
		set term svg
		set output "../results/uvel_$1_$2.svg"
		plot "uvel000000.res"
	EOFMarker
	echo "----------$1 $3 RESULTS SAVED----------"
}

# main routine
reset_dir
setup_uni_sim
for vel in "${VEL[@]}"
do
	setup_sim $PHI $vel $STEPS $ADAPTIVE
	echo "----------$PHI $vel $STEPS SIMULATION INITIATED----------"
	./Hamish 1 > hamish.res
	echo "----------$PHI $vel $STEPS SIMULATION COMPLETE----------"
	save_results $PHI $i $vel
	((i+=1))
done
echo "${VEL[@]}" > ../results/vels_$PHI.txt
echo "----------ALL SIMULATIONS COMPLETE----------"
