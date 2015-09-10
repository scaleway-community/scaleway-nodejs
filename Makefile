DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-nodejs
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Node.js
DESCRIPTION =		Node.js
SOURCE_URL =		https://github.com/scaleway/image-app-nodejs

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Node.js

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
