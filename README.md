# Node.js image on Scaleway

[![Build Status](https://travis-ci.org/scaleway-community/scaleway-nodejs.svg?branch=master)](https://travis-ci.org/scaleway-community/scaleway-nodejs)
[![Scaleway ImageHub](https://img.shields.io/badge/ImageHub-view-ff69b4.svg)](https://hub.scaleway.com/nodejs.html)
[![Run on Scaleway](https://img.shields.io/badge/Scaleway-run-69b4ff.svg)](https://cloud.scaleway.com/#/servers/new?image=d11d7cc2-6ec8-4f95-a286-24fb5bac9e39)

Launch your [Node.js](https://nodejs.org/) app on Scaleway servers in minutes.

<img src="http://upload.wikimedia.org/wikipedia/commons/d/d9/Node.js_logo.svg" width="400px" />

---

## How to hack

**From the [scaleway-cli](https://github.com/scaleway/scaleway-cli)**

```shell
$ scw run --commercial-type=VC1S Node_js_LTS_8_x
```

**This image is meant to be used on a Scaleway server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-builder)


---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)
