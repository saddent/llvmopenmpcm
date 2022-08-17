genpllvmo1:
	cd ./p_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../p_example3.cpp -I ${MIOPENMP} -fopenmp; \

genpllvmo2:
	cd ./p_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../p_example3.cpp -I${MIOPENMP} -fopenmp; \

gennllvmo1:
	cd ./n_llvmo1; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example1.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example2.cpp -I${MIOPENMP} -fopenmp; \
	$(CLANGM) -O1 -S -emit-llvm ../n_example3.cpp -I${MIOPENMP} -fopenmp; \

gennllvmo2:
	cd ./n_llvmo2; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example1.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example2.cpp -I ${MIOPENMP} -fopenmp; \
	$(CLANGM) -O2 -S -emit-llvm ../n_example3.cpp -I ${MIOPENMP} -fopenmp; \

runpopto1:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo1/p_example1.ll 2>./p_outputo1/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo1/p_example2.ll 2>./p_outputo1/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo1/p_example3.ll 2>./p_outputo1/dbg_3.txt

runnopto1:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo1/n_example1.ll 2>./n_outputo1/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo1/n_example2.ll 2>./n_outputo1/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo1/n_example3.ll 2>./n_outputo1/dbg_3.txt

runpopto2:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo2/p_example1.ll 2>./p_outputo2/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo2/p_example2.ll 2>./p_outputo2/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./p_llvmo2/p_example3.ll 2>./p_outputo2/dbg_3.txt

runnopto2:
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo2/n_example1.ll 2>./n_outputo2/dbg_1.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo2/n_example2.ll 2>./n_outputo2/dbg_2.txt
	$(OPTM) -debug -enable-new-pm=0 -openmp-opt-cgscc < ./n_llvmo2/n_example3.ll 2>./n_outputo2/dbg_3.txt


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

runopt: genir runnopto1 runnopto2 runpopto1 runpopto2

geniro: genonllvmo1 genonllvmo2 genopllvmo1 genopllvmo2

clean:
	- rm -rf ./n_outputo1
	- rm -rf ./n_outputo2
	- rm -rf ./n_llvmo1
	- rm -rf ./n_llvmo2
	- rm -rf ./p_outputo1
	- rm -rf ./p_outputo2
	- rm -rf ./p_llvmo1
	- rm -rf ./p_llvmo2
	
all: genir runopt geniro
