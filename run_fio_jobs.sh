#!/bin/sh

run_fio_job() {
    local section="$1"
    fio --section="$section" /jobs/telco_tests.fio
}

run_fio_job "iops_and_bw_for_rand_reads_and_writes"
run_fio_job "iops_and_bw_for_rand_reads"
run_fio_job "iops_and_bw_for_seq_reads"
run_fio_job "latency_for_random_reads_and_writes"
run_fio_job "latency_for_random_reads"
run_fio_job "throughput_for_rand_reads_and_writes"
run_fio_job "throughput_for_rand_reads"
run_fio_job "throughput_for_seq_reads"

