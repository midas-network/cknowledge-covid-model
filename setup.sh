#!/bin/bash -l
conda create --name covid python=3.6 -y
conda activate covid

pip install --upgrade pip && pip install -e . &&  cd scripts && python run_sir.py PA --start 2020-03-05 --end 2020-03-06 
