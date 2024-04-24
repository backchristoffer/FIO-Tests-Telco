FROM alpine:latest

RUN apk add --no-cache fio

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]