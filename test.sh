#!/bin/bash

CM_TMP_CURRENT_SCRIPT_PATH=${CM_TMP_CURRENT_SCRIPT_PATH:-$PWD}
echo "conda environment: ${cm_env_conda}"
echo "python environment: ${cm_env_python}"
bash Anaconda-latest-Linux-x86_64.sh
conda create --name ${cm_env_conda} python=${cm_env_python} -y
eval "$(conda shell.bash hook)"
conda activate ${cm_env_conda}

cd ${CM_TMP_CURRENT_SCRIPT_PATH}
echo "state: ${cm_env_state}"
echo "start: ${cm_env_start}"
echo "end: ${cm_env_end}"
conda run -n covid pip install --upgrade pip && pip install -e . &&  cd scripts && python run_sir.py ${cm_env_state} --start ${cm_env_start} --end ${cm_env_end}

test $? -eq 0 || exit $?

echo "CM_NEW_VAR_FROM_RUN=$MLPERF_XYZ" > tmp-run-env.out


#&&  cd scripts && python run_sir.py PA --start 2020-03-05 --end 2020-03-06 
