FROM debian:stretch-slim

MAINTAINER Nguyen Binh Son <son@codegym.vn>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y pandoc

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /docs

ENTRYPOINT ["pandoc"]

CMD ["--help"]

