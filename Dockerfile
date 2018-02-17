FROM alpine

LABEL maintainer="hu@daonao.com"

ARG SSH_GITHUB_TAG

LABEL SSH_GITHUB_TAG="${SSH_GITHUB_TAG}"

COPY known_hosts /root/.ssh/known_hosts
COPY entrypoint.sh /root/entrypoint.sh

RUN	apk update && \
	apk add git openssh-keygen openssh-client && \
	ssh-keygen -t rsa -b 4096 -N "" -C "" -f /root/.ssh/id_rsa && \
	eval "$(ssh-agent -s)" && \
	ssh-add /root/.ssh/id_rsa

ENTRYPOINT ["/bin/sh", "/root/entrypoint.sh"]
