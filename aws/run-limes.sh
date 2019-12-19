sudo ip addr add 169.254.169.254/24 broadcast 169.254.169.255 dev lo:metadata
sudo ip link set dev lo:metadata up
