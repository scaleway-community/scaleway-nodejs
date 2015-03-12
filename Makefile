DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-nodejs
VERSION =		latest
VERSION_ALIASES =	14.04 14 trusty
TITLE =			Node.js
DESCRIPTION =		Node.js
SOURCE_URL =		https://github.com/online-labs/image-app-nodejs


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
