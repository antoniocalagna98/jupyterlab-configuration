FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential  \
     checkinstall \
    libncursesw5-dev \
    libssl-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
    zlib1g-dev \
    openssl \
    libffi-dev \
    python3-dev \
    python3-setuptools \
    wget \
    python3-pip


RUN ln -s /usr/local/bin/python3.9 /usr/bin/python

RUN pip install --upgrade pip
RUN pip install requests
RUN apt-get install curl -y

RUN pip install jupyter --upgrade
RUN pip install jupyterlab --upgrade

RUN apt-get install pandoc -y
RUN apt-get install texlive-xetex -y 
RUN apt-get install dvipng -y
RUN apt-get install cm-super -y

RUN pip install bash_kernel
RUN python3 -m bash_kernel.install

RUN apt-get install nodejs -y
RUN apt-get install npm -y

### SPECIFIC CONFIG

RUN pip install numpy
RUN pip install matplotlib
RUN pip install pandas
RUN pip install etcd3

ENV MAIN_PATH=/usr/local/bin/jupyterlab
ENV LIBS_PATH=${MAIN_PATH}/libs
ENV CONFIG_PATH=${MAIN_PATH}/config
ENV NOTEBOOK_PATH=${MAIN_PATH}/notebooks

EXPOSE 8888
EXPOSE 2379
EXPOSE 2380
COPY /config/extensions_jupyter.sh ./

RUN bash -c "/extensions_jupyter.sh"

CMD cd ${MAIN_PATH} && sh config/run_jupyter.sh
