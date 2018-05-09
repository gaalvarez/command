#!/bin/sh

#BASE="release-1.0.0"
#TARGET="demo"

BASE="develop"
TARGET="release-1.0.0"

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
	git checkout $BASE
	git pull origin $BASE
	git checkout $TARGET
	git pull origin $TARGET
	git merge $BASE
	cd ..
	echo '______________________________________________'
    done

