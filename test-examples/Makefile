createdirs:
#	mkdir -p ./p_llvmo1; \
	mkdir -p ./p_llvmo2; \
	mkdir -p ./n_llvmo1; \
	mkdir -p ./n_llvmo2; \

	mkdir -p ./interfiles/pfiles; \
	mkdir -p ./interfiles/nfiles; \
	mkdir -p ./on_llvmo1;
#	mkdir -p ./on_llvmo2;
	mkdir -p ./op_llvmo1;
#	mkdir -p ./op_llvmo2;
#	mkdir -p ./p_outputo1;\
	mkdir -p ./p_outputo2;\
	mkdir -p ./n_outputo1;\
	mkdir -p ./n_outputo2;\

#genpllvmo1:
#	cd ./p_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example3.cpp -I ${MIOPENMP} -fopenmp; \

#genpllvmo2:
#	cd ./p_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example3.cpp -I${MIOPENMP} -fopenmp; \

#gennllvmo1:
#	cd ./n_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example3.cpp -I${MIOPENMP} -fopenmp; \

#gennllvmo2:
#	cd ./n_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example3.cpp -I ${MIOPENMP} -fopenmp; \

genpintero1:
	cd ./interfiles/pfiles; \
	$(CLANGM) -O1 -g0 -save-temps ../../p_example1.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \
	$(CLANGM) -O1 -g0 -save-temps ../../p_example2.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \
	$(CLANGM) -O1 -g0 -save-temps ../../p_example3.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \

gennintero1:
	cd ./interfiles/nfiles; \
	$(CLANGM) -O1 -g0 -save-temps ../../n_example1.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \
	$(CLANGM) -O1 -g0 -save-temps ../../n_example2.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \
	$(CLANGM) -O1 -g0 -save-temps ../../n_example3.cpp -I ${MIOPENMP} -fopenmp -L ${MLOPENMP}; \

displlvmo1:
	cd ./interfiles/pfiles; \
	$(LLVMDIS) p_example1.bc -o p_example1.ll; \
	$(LLVMDIS) p_example2.bc -o p_example2.ll; \
	$(LLVMDIS) p_example3.bc -o p_example3.ll; \
	
disnllvmo1:
	cd ./interfiles/nfiles; \
	$(LLVMDIS) n_example1.bc -o n_example1.ll; \
	$(LLVMDIS) n_example2.bc -o n_example2.ll; \
	$(LLVMDIS) n_example3.bc -o n_example3.ll; \

runpopto1:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example1.ll 2>./op_llvmo1/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example2.ll 2>./op_llvmo1/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example3.ll 2>./op_llvmo1/dbg_3.txt

runnopto1:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example1.ll 2>./on_llvmo1/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example2.ll 2>./on_llvmo1/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example3.ll 2>./on_llvmo1/dbg_3.txt

#runpopto2:
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example1.ll 2>./p_outputo2/dbg_1.txt
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example2.ll 2>./p_outputo2/dbg_2.txt
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/pfiles/p_example3.ll 2>./p_outputo2/dbg_3.txt

#runnopto2:
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example1.ll 2>./n_outputo2/dbg_1.txt
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example2.ll 2>./n_outputo2/dbg_2.txt
#	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./interfiles/nfiles/n_example3.ll 2>./n_outputo2/dbg_3.txt


genopllvmo1:
	cd ./op_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example3.cpp -I ${MIOPENMP} -fopenmp; \

genopllvmo2:
	cd ./op_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example3.cpp -I${MIOPENMP} -fopenmp; \

genonllvmo1:
	cd ./on_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example3.cpp -I${MIOPENMP} -fopenmp; \

genonllvmo2:
	cd ./on_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example3.cpp -I ${MIOPENMP} -fopenmp; \

genir: gennllvmo1 gennllvmo2 genpllvmo1 genpllvmo2

runopt: genintero runnopto1 runpopto1 #runnopto2 #runpopto2 #genir 

#geniro: genonllvmo1 genonllvmo2 genopllvmo1 genopllvmo2

genintero: genpintero1 gennintero1

disiro : disnllvmo1 displlvmo1

clean:
	- rm -rf ./n_outputo1
	- rm -rf ./n_outputo2
	- rm -rf ./n_llvmo1
	- rm -rf ./n_llvmo2
	- rm -rf ./on_llvmo1
	- rm -rf ./on_llvmo2
	- rm -rf ./op_llvmo1
	- rm -rf ./op_llvmo2
	- rm -rf ./p_outputo1
	- rm -rf ./p_outputo2
	- rm -rf ./p_llvmo1
	- rm -rf ./p_llvmo2
	- rm -rf ./interfiles
	
all: createdirs genintero disiro runopt
