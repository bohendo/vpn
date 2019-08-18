#!/bin/bash

image="`whoami`/vpn:latest"

docker pull $image

docker service create \
	--mount "type=volume,source=ovpn-data,target=/etc/openvpn"
