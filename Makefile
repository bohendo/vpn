me=$(shell whoami)
image="$(me)/vpn:latest"

all:
	OVPN_DATA=ovpen-data

deploy: all
	docker push $(image)
