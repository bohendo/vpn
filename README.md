
# How to setup sslh

[Guide 1](http://www.bernaerts-nicolas.fr/linux/75-debian/210-debian-sslh)
[Guide 2](https://metahackers.pro/share-ssh-openvpn-and-https-in-same-port/)

# How to setup OpenVPN

[Guide 3](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-18-04)

# Something docker related (idk):

On VPN server:

```
export OVPN_DATA="ovpn_data"
export HOSTNAME="vpn.server.com"
export CLIENT="client"

docker volume create --name $OVPN_DATA
docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://$HOSTNAME
docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $CLIENT nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $CLIENT > $CLIENT.ovpn

```


