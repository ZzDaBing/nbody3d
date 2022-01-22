#! /bin/bash
runnbody0(){
	cd 0
	make
	cd ..
}
runnbody1(){
	cd 1
	make
	cd ..
}
runnbody2(){
	cd 2
	make
	cd ..
}
runnbody3(){
	cd 3
	make
	cd ..
}
runnbody4(){
	cd 4
	make
	cd ..
}
rm averagePerf.dat AveragePerf.png
runnbody0
runnbody1
runnbody2
runnbody3
runnbody4