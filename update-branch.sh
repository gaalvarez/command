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

for Rep in $arr 
    do
	echo '______________________________________________'
        echo $Rep
        cd $Rep
	git checkout $BRANCH
	git pull origin $BRANCH
	cd ..
	echo '______________________________________________'
    done

