IMAGE_NAME=resmio/docker-postgres-gis-hstore


####################
### Postgres 9.6 ###
####################

postgres-9-build:
	docker build . -f Dockerfile-9 -t ${IMAGE_NAME}:9 --force-rm

postgres-9-push-tag-9:
	docker push ${IMAGE_NAME}:9

postgres-9-push-tag-latest:
	docker push ${IMAGE_NAME}


#####################
### Postgres 11.7 ###
#####################

postgres-11-build:
	docker build . -f Dockerfile-11 -t ${IMAGE_NAME}:11 --force-rm

postgres-11-push-tag-11:
	docker push ${IMAGE_NAME}:11

postgres-11-push-tag-latest:
	docker push ${IMAGE_NAME}

