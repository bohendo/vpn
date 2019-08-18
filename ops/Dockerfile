FROM kylemanna/openvpn

RUN ovpn_genconfig -u

COPY entry.sh /root/entry.sh

ENTRYPOINT entry.sh
