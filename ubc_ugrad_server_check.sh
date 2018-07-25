#!/bin/bash

csuser=c6y8
(
    for s in remote lulu thetis anvil valdes annacis; do
        ssh "${csuser}@${s}.ugrad.cs.ubc.ca" \
            'echo "$(hostname) cpus=$(cat /proc/cpuinfo | grep processor | wc -l)";
        uptime;'
    done
)
