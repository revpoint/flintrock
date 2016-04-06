FROM python:3.5-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		libc6-dev \
		gcc \
		g++ \
		make \
		dpkg-dev \
		autoconf \
		curl \
		git \
        openssh-client \
	&& rm -rf /var/lib/apt/lists/*

ADD . /tmp/flintrock
RUN cd /tmp/flintrock && pip install -r requirements/user.pip
ENTRYPOINT ["flintrock"]
