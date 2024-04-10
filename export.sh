#! /bin/bash

baseDir="dbfiles"

dockerName="alvin-postgresql"

start(){
	echo "Exporting data from docker "$dockerName
	docker exec  -i $dockerName bash < runInsideDocker.sh
	echo "Copying files to local export folder..."
	docker cp $dockerName:/$baseDir/alvin ./$baseDir
	docker cp $dockerName:/$baseDir/alvinPreview ./$baseDir
	docker cp $dockerName:/$baseDir/alvinTestSystem ./$baseDir
	docker cp $dockerName:/$baseDir/alvinProduction ./$baseDir
	docker cp $dockerName:/$baseDir/alvinData ./$baseDir
}

start