#!/bin/bash

cd ~
mkdir .jupyter
mkdir .config

# copy the jupyter configuration into home-directory
cp -r ${CONFIG_PATH}/jupyter_notebook_config.py ~/.jupyter/
cp -r ${CONFIG_PATH}/user_settings/* ~/.jupyter/
cp -r ${CONFIG_PATH}/user_settings/pycodestyle ~/.config/

cd ${MAIN_PATH}

mkdir notebooks

#nohup jupyter lab --no-browser --port=8888 &
jupyter lab --no-browser --port=8888

sleep infinity
tail -f /dev/null
