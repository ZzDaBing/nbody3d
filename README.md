!!! A LIRE !!!

Ce dossier contient :
-un fichier README
-un script bash.sh permettant d'exécuter toutes les versions de nbody ainsi 
-un script clean.sh permettant de supprimer les fichiers output créés dans nbody
-un fichier hist.py permettant de réaliser un histogramme entre les moyennes des différentes versions de nbody3d
-des dossiers de numéro différents indiquant chaque version de nbody, avec à l'intérieur : un fichier nbody.c et un makefile
-un fichier rapport.pdf contenant le rapport attendu
-un dossier res contenant:
	-des dossiers vXgcc et vXicc correspondant aux rapports maqao générés
	-un fichier Perf_info.txt contenant le résultat des moyennes de perf des nbody3d générés depuis le knl07
	-un fichier AveragePerf.png montrant l'histogramme

!Les fichiers perfs sont automatiquement générés lors du run de bash.sh!

#RUN:
./bash.sh

#CLEAN:
./clean.sh

#Pour générer l'histogramme : 
python3 hist.py
