#!/bin/bash
set -x #debug mode
set -e #exit the script when there is an error
set -o pipefail #exit script during error when using pipe

#disk space
df -h

#CPU memory
free -g

#no of processor/CPU
nproc
