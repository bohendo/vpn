#!/bin/bash

volume=openvpn

docker volume create --name $volume

docker run -v $volume:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://vpn.bohendo.com

docker run -v $volume:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
