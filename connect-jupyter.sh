#!/bin/bash

SSHPASS="totonio98"
sshpass -p $SSHPASS ssh -N -L 8888:localhost:8888 antonio@192.168.188.9
