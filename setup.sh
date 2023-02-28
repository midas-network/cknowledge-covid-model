#!/bin/bash -l
#!/bin/bash

CM_TMP_CURRENT_SCRIPT_PATH=${CM_TMP_CURRENT_SCRIPT_PATH:-$PWD}/scripts
bash Anaconda-latest-Linux-x86_64.sh

conda create --name covid python=3.6 -y
conda init covid
conda activate covid

which ${CM_PYTHON_BIN_WITH_PATH}
${CM_PYTHON_BIN_WITH_PATH} --version

pip install --upgrade pip && pip install -e . 

#cd scripts
${CM_PYTHON_BIN_WITH_PATH} ${CM_TMP_CURRENT_SCRIPT_PATH}/setup.py
${CM_PYTHON_BIN_WITH_PATH} ${CM_TMP_CURRENT_SCRIPT_PATH}/python run_sir.py PA --start 2020-03-05 --end 2020-03-06

test $? -eq 0 || exit $?

echo "CM_NEW_VAR_FROM_RUN=$MLPERF_XYZ" > tmp-run-env.out


#&&  cd scripts && python run_sir.py PA --start 2020-03-05 --end 2020-03-06 
