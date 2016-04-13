NAME =			nodejs
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Node.js
DESCRIPTION =		Node.js
SOURCE_URL =		https://github.com/scaleway-community/scaleway-nodejs
DEFAULT_IMAGE_ARCH =	x86_64

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Node.js


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
