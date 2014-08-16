#####################################
#  Fedora ~/.bashrc lazy aliases   #
#####################################

### OVS Aliases ###
alias novh='nova hypervisor-list'
alias novm='nova-manage service list' 
alias ovstart='sudo /usr/share/openvswitch/scripts/ovs-ctl start' 
alias ovs='sudo ovs-vsctl show'
alias ovsd='sudo ovsdb-client dump'
alias ovsp='sudo ovs-dpctl show'
alias ovsf='sudo ovs-ofctl '
alias logs="sudo journalctl -n 300 --no-pager"
alias ologs="tail -n 300 /var/log/openvswitch/ovs-vswitchd.log"
alias vsh="sudo virsh list"
alias ovap="sudo ovs-appctl fdb/show "
alias ovapd="sudo ovs-appctl bridge/dump-flows "
alias dpfl=" sudo ovs-dpctl dump-flows "
alias ovtun="sudo ovs-ofctl dump-flows br-tun"
alias ovint="sudo ovs-ofctl dump-flows br-int"
alias ovap="sudo ovs-appctl fdb/show "
alias ovapd="sudo ovs-appctl bridge/dump-flows "
alias ovl="sudo ovs-ofctl dump-flows br-int"
alias dfl="sudo ovs-ofctl -O OpenFlow13 del-flows "
alias ovls="sudo ovs-ofctl -O OpenFlow13  dump-flows br-int"
alias dpfl="sudo ovs-dpctl dump-flows "
alias ofport=" sudo ovs-ofctl -O OpenFlow13 dump-ports br-int"
alias del=" sudo ovs-ofctl -O OpenFlow13 del-flows "
alias delman=" sudo ovs-vsctl del-manager"
# Replace the IP with the ODL controller or OVSDB manager address
## alias addman=" sudo ovs-vsctl set-manager tcp:172.16.150.1:6640"
alias prof="vi ~/.bash_profile"
alias src="source ~/.bashrc"
alias vsh="sudo virsh list"
alias ns="sudo ip netns exec "

alias beep='echo -en "\007"'
alias uwget='wget --no-check-certificate'
alias dostack='cd /opt/devstack/ && ./stack.sh ; beep'
