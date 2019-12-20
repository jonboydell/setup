#!/usr/bin/env bash
PROJECT_NAME=${1}

if [ -z "${PROJECT_NAME}" ]; then
	echo "Usage: setup-project.sh PROJECT_NAME" && exit 1
fi

mkdir -p ${HOME}/projects/${PROJECT_NAME}
pushd ${HOME}/projects/${PROJECT_NAME}
git init
virtualenv python-env
echo "python-env" >> .gitignore
source python-env/bin/activate
pip install flake8
popd
