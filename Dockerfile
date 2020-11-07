FROM python:3.8
MAINTAINER Benedikt Kristinsson <benedikt@lokun.is>

RUN install poetry && poetry config virtualenvs.create false

CMD ["python"]
