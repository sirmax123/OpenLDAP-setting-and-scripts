#!/bin/bash


NODES="10.20.0.4	10.20.0.5"

NODES="10.20.0.6"

LOGDIR=/sudosh
mkdir -p ${SUDOSH}

for NODE in ${NODES}
do
  mkdir -p ${LOGDIR}/node-${NODE}
  echo ${NODE}
  echo rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" toor@${NODE}:/root ${LOGDIR}/node-${NODE}/
done