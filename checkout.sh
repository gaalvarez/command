#!/bin/sh
#BRANCH="release-1.0.0"
BRANCH="develop"
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

for Rep in $arr 
    do
	echo '______________________________________________'
        echo $Rep
        cd $Rep
	git checkout $BRANCH
	cd ..
	echo '______________________________________________'
    done
