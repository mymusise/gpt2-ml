FROM rocm/tensorflow:rocm3.0-tf1.15-python3

WORKDIR /gpt2-ml

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
RUN pip install ujson jupyterlab

COPY ./sources.list /etc/apt/sources.list

RUN apt update
RUN apt install -y --no-install-recommends git
RUN apt install -y --no-install-recommends htop
RUN apt install -y --no-install-recommends language-pack-zh-hans


RUN locale-gen zh_CN.UTF-8;

ENV LANG=C.UTF-8

CMD ['bash']
