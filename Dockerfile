ARG py3version=3.9
FROM python:${py3version}

MAINTAINER Benedikt Kristinsson <benedikt@lokun.is>

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Berlin

RUN python3 -m pip install -U pip \
        && python3 -m pip install poetry

ARG UID=1000
RUN useradd -m -u ${UID} sudois && \
        mkdir /sudois && \
        chown sudois:sudois /sudois
USER sudois
WORKDIR /sudois


CMD ["poetry"]
