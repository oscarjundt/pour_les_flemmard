hello(){
	ls *.$1 2>/dev/null;
}
hello3(){
	ls dossier_$1 2>/dev/null;
}
read -p 'donner extension a deplacer: ' a
c=$(hello $a)
c2=$(hello3 $a)
if [ "$c2" == "" ] ; then
	mkdir dossier_$a
	if [ "$c" == "" ] ; then
		echo pas de fichier avec cette extension
	else
		mv *.$a dossier_$a
	fi
else
	if [ "$c" = "" ] ; then
		echo pas de fichier avec cette extension
	else
		mv *.$a dossier_$a
	fi
fi
