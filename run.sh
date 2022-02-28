alias docker=podman

docker build -t jupyterlab -f config/jupyterlab.Dockerfile .

docker run -it --rm -d -v ${PWD}:/usr/local/bin/jupyterlab -p 8888:8888 --name=jupyter jupyterlab
