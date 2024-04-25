FROM alpine:latest

RUN apk add --no-cache fio

#CVE-24024-2511 vulnerability fix
RUN apk upgrade libssl3 libcrypto3

COPY jobs /jobs
RUN chmod +x /run_fio_jobs.sh

VOLUME /data
WORKDIR /data

ENTRYPOINT [ "/run_fio_jobs.sh" ]
