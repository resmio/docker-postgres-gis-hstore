IMAGE_NAME=resmio/docker-postgres-gis-hstore


postgres-11-build:
	docker build . -f Dockerfile-11 -t ${IMAGE_NAME}:11 --force-rm

postgres-11-push:
	docker push ${IMAGE_NAME}:11
