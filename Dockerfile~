FROM alpine

MAINTAINER huzhenghui hu@daonao.com

COPY known_hosts /root/.ssh/known_hosts
COPY entrypoint.sh /root/entrypoint.sh

RUN	apk update && \
	apk add openssh-keygen openssh-client && \
	ssh-keygen -t rsa -b 4096 -N "" -C "" -f /root/.ssh/id_rsa && \
	eval "$(ssh-agent -s)" && \
	ssh-add /root/.ssh/id_rsa

ENTRYPOINT ["/bin/sh", "/root/entrypoint.sh"]
