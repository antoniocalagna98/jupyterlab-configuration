alias docker=podman
docker build -t jupyterlab -f config/jupyterlab.Dockerfile .
#docker run -it -v ${PWD}:/usr/local/bin/jupyterlab -p 8888:8888 jupyterlab
docker run -it -d -v ${PWD}:/usr/local/bin/jupyterlab -p 8888:8888 --name=jupyter jupyterlab
