deployconip:
	@ docker run -d --name appflaskdp -p 7001:5000 ghcr.io/dustin129812/holaflask:1.0.0

deploy:
	@ docker stack deploy --with-registry-auth -c stack.yml dustin 

network:
	@ docker network create --diriver overlay --scope swarm dustin_net || true

volume:
	@ docker volume create v_dustin