FROM rust:1.75-slim-bookworm


WORKDIR /home/app

COPY actix-scaffolding .
COPY .env .

RUN apt-get update && apt-get install -y
RUN apt-get upgrade -y
RUN apt install pkg-config -y
RUN apt-get install libudev-dev -y
RUN apt install libssl-dev -y

RUN apt-get install libpq-dev -y
RUN apt-get update && apt install -y openssl