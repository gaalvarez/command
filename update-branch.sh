#!/bin/sh

BRANCH='develop'
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
		git pull origin $BRANCH
		cd ..
		echo '______________________________________________'
    done

