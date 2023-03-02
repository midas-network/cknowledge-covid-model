#!/bin/bash

export CM_BUILD_DOCKERFILE="yes"
export CM_DOCKERFILE_WITH_PATH="/home/jeff/CM/repos/mlcommons@ck/cm-mlops/script/cknowledge-covid-model/Dockerfile"
export CM_DOCKER_BUILD_ARGS=""
export CM_DOCKER_IMAGE_BASE="ubuntu:20.04"
export CM_DOCKER_IMAGE_NAME="cm"
export CM_DOCKER_IMAGE_REPO="local/covid-bayesian-model-jeff"
export CM_DOCKER_IMAGE_TAG="ubuntu-20.04-latest"
export CM_DOCKER_RUN_CMD="cm run script --quiet --tags=covid,bayesian,model,jeff"
export CM_DOCKER_RUN_CMD_EXTRA="--env.CM_ENV_STATE=IL --env.CM_ENV_START=2020-03-05 --env.CM_ENV_END=2020-03-08"
export CM_DOCKER_RUN_SCRIPT_TAGS="covid,bayesian,model,jeff"
export CM_TMP_CURRENT_PATH="/home/jeff/CM/repos/mlcommons@ck/cm-mlops/script/cknowledge-covid-model"
export CM_TMP_CURRENT_SCRIPT_PATH="/home/jeff/CM/repos/mlcommons@ck/cm-mlops/script/build-docker-image"
export CM_TMP_PIP_VERSION_STRING=""


. /home/jeff/CM/repos/mlcommons@ck/cm-mlops/script/build-docker-image/run.sh
