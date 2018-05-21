#!/bin/sh

#para ambiente de pruebas merge develop->release
#BASE="develop"
#TARGET="release-1.0.0"

#para ambiente de aic merge release->demo
BASE="release-1.0.0"
TARGET="demo"

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
		git checkout $BASE
		git pull origin $BASE
		git checkout $TARGET
		git pull origin $TARGET
		git merge $BASE
		cd ..
		echo '______________________________________________'
    done

