#!/bin/bash

client="${1:-client}"
volume=openvpn

docker run -v $volume:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $client nopass

docker run -v $volume:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $client > $client.ovpn
