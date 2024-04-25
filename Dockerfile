FROM alpine:latest

RUN apk add --no-cache fio

#CVE-24024-2511 vulnerability fix
RUN apk upgrade libssl3 libcrypto3

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
