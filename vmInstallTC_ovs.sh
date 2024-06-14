#!/bin/bash
virt-install \
--name $1 \
--ram 128 \
--disk path=$2 \
--vcpus 1 \
--os-type linux \
--os-variant generic \
--network network=$3,portgroup=$4 \
--graphics none \
--console pty,target_type=serial \
--import
