DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-nodejs
VERSION =		latest
VERSION_ALIASES =	14.04 14 trusty
TITLE =			Node.js
DESCRIPTION =		Node.js
SOURCE_URL =		https://github.com/scaleway/image-app-nodejs


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
