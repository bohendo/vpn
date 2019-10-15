#!/bin/bash

image="`whoami`/vpn:latest"

docker pull $image

docker service create \
  --detach \
	--mount "type=volume,source=ovpn-data,target=/root/ovpn-data" \
  --name="openvpn" \
  --rm \
  $image
