#!/bin/sh
#pruebas
#BRANCH="release-1.0.0"

#ambiente aic
BRANCH="demo"

arr="common
afiliacion
frontend
tutelas
auditorias-cm
autorizaciones
ctc
portabilidad
red-servicios
pqr" 

cd ..
for Rep in $arr 
    do
		echo '____________*****'"$Rep"'*****_____________'
	    cd $Rep
		git checkout $BRANCH
		git push origin $BRANCH
		cd ..
		echo '______________________________________________'
    done
