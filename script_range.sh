declare tab=(c bash bat exe odt pdf php txt cs jar)
for i in `seq 0 8` ; do mv *.${tab[i]} dossier_${tab[i]} 2>>/dev/null ; done
