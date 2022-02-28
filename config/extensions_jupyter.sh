#!/bin/bash

jupyter labextension install jupyterlab_onedarkpro

pip install 'jupyterlab>=3.0.0,<4.0.0a0' jupyterlab-lsp

pip install 'python-lsp-server[all]'

pip install git+https://github.com/krassowski/python-language-server.git@main

mkdir -p .lsp_symlink
cd .lsp_symlink
ln -s ~ home
