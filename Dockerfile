ARG py3version=3.8
FROM python:${py3version}
MAINTAINER Benedikt Kristinsson <benedikt@lokun.is>

RUN pip install poetry && poetry config virtualenvs.create false

CMD ["poetry"]
