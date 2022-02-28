#!/bin/bash

cd ~
mkdir .jupyter

# copy the jupyter configuration into home-directory
cp -r ${CONFIG_PATH}/jupyter_notebook_config.py ~/.jupyter/
cp -r ${CONFIG_PATH}/user_settings/* ~/.jupyter/

cd ${MAIN_PATH}

mkdir notebooks

nohup jupyter lab --no-browser --port=8888 &

sleep infinity
#tail -f /dev/null
