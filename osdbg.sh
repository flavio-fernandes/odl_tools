#!/bin/bash

set -x

echo
echo "New capture: $1"
echo 

ip link
ip addr

ip route

for i in $(ip netns); do
    sudo ip netns exec $i ip link
    sudo ip netns exec $i ip addr
    sudo ip netns exec $i ip route
done

sudo brctl show
sudo ovs-dpctl show
sudo ovs-dpctl dump-flows
sudo ovs-vsctl show

for i in `sudo ovs-vsctl list-br`; do
    sudo ovs-ofctl show $i
    sudo ovs-ofctl dump-flows $i
    sudo ovs-ofctl -O OpenFlow13 dump-flows $i
done

exit 0

