#!/bin/bash

BRANCH_FULL=${GITHUB_REF}
BRANCH=${BRANCH_FULL/refs\/heads\//""}
GIT_REPO=${GITHUB_REPOSITORY##*/}


if [ -f coverage/lcov.info ]; then
    sed -i 's/\/home\/runner\/work\/'$GIT_REPO'\/'$GIT_REPO'\///g' coverage/lcov.info    
fi

if [ -f coverage-poetry.xml ]; then
    sed -i 's/\/home\/runner\/work\/'$GIT_REPO'\/'$GIT_REPO'\///g' coverage-poetry.xml
    mv coverage-poetry.xml coverage.xml
fi 



if [[ "${INPUT_CHECKQUALITYGATE}" == "true" ]]; then
	sonar-scanner \
		-Dsonar.host.url=${INPUT_HOST} \
    		-Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
    		-Dsonar.login=${INPUT_LOGIN} \
    		-Dsonar.password=${INPUT_PASSWORD} \
		-Dsonar.branch.name=${BRANCH} \
		-Dsonar.verbose=${INPUT_VERBOSE} \
		-Dsonar.qualitygate.wait \
		-Dsonar.qualitygate.timeout=300
else
	sonar-scanner \
		-Dsonar.host.url=${INPUT_HOST} \
    		-Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
    		-Dsonar.login=${INPUT_LOGIN} \
    		-Dsonar.password=${INPUT_PASSWORD} \
		-Dsonar.verbose=${INPUT_VERBOSE} \
		-Dsonar.branch.name=${BRANCH}
fi
