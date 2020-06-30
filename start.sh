#!/bin/bash

volume=openvpn

docker run -v $volume:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
