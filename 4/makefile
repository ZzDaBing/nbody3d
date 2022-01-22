all: nbody.g nbody.i run_perf.g run_perf.i

nbody.g: nbody.c
	gcc -march=native -mavx512f -Ofast -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.i: nbody.c
	icc -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

clean:
	rm -Rf *~ nbody.g nbody.i *.optrpt *.gcc *.data *.old

run_perf.g:
	perf record -o nbodyg.data ./nbody.g
	perf report -i nbodyg.data
	
run_perf.i:
	perf record -o nbodyi.data ./nbody.i
	perf report -i nbodyi.data
