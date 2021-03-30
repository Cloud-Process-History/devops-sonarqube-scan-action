#!/bin/bash

sonar-scanner \
	-Dsonar.host.url=${INPUT_HOST} \
    	-Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
    	-Dsonar.login=${INPUT_LOGIN} \
    	-Dsonar.password=${INPUT_PASSWORD} \
	-Dsonar.qualitygate.wait \
	-Dsonar.qualitygate.timeout=300

#echo "------------------"
#echo " RUN QUALITY GATE "
#echo "------------------"
#pwd
#ls
#sh /breakbuild.sh ${INPUT_HOST} ${INPUT_PASSWORD} ${INPUT_LOGIN} 
