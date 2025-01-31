FROM ubuntu:20.04

RUN apt update && apt upgrade
RUN apt install python3 -y

ADD desafio-01.sh desafio-01.sh
ADD desafio-02.py desafio-02.py

CMD ./desafio-01.sh