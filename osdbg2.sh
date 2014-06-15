#!/bin/bash

set -vx

mkdir $1

ovsdb-tool show-log &> $1/show.log
cp /etc/openvswitch/conf.db $1

cp /var/log/openvswitch/*.log $1

/opt/osdbg.sh &> $1/$2_osdbg.txt

exit 0
