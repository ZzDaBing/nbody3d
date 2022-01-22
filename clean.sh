#! /bin/bash
cleannbody0(){
	cd 0
	make clean
	cd ..
}
cleannbody1(){
	cd 1
	make clean
	cd ..
}
cleannbody2(){
	cd 2
	make clean
	cd ..
}
cleannbody3(){
	cd 3
	make clean
	cd ..
}
cleannbody4(){
	cd 4
	make clean
	cd ..
}
echo "Cleaning output files ..."
cleannbody0
cleannbody1
cleannbody2
cleannbody3
cleannbody4
rm averagePerf.dat AveragePerf.png
echo "Cleaned!"