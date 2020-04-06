#!/bin/bash -

# SETUP PYTHON VIRTUAL ENV & REQUIREMENTS
mkdir -p ~/py_envs/k8s
virtualenv -p python3 ~/py_envs/k8s
source /home/${USER}/py_envs/k8s/bin/activate
python -m pip install -r requirements.txt
juyter-notebook
