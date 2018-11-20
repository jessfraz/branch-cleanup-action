FROM golang:alpine
MAINTAINER Jessica Frazelle <jess@linux.com>

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY cleanup-pr-branch /usr/bin/cleanup-pr-branch

ENTRYPOINT ["cleanup-pr-branch"]
