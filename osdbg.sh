#!/bin/bash

set -x

echo
echo -n "New capture: $1 " ; date
echo 

sudo virsh list
neutron net-list

ip link
ip addr

ip route

for i in $(ip netns); do
    sudo ip netns exec $i ip link
    sudo ip netns exec $i ip addr
    sudo ip netns exec $i ip route
done

sudo brctl show
sudo ovsdb-client dump
sudo ovs-dpctl show
sudo ovs-dpctl dump-flows
sudo ovs-vsctl show

for i in `sudo ovs-vsctl list-br`; do
    for proto in OpenFlow10 OpenFlow13 ; do
        sudo ovs-ofctl -O ${proto} show $i
        sudo ovs-ofctl -O ${proto} dump-flows $i
    done
    sudo ovs-appctl fdb/show $i
done

exit 0

