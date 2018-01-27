FROM debian:stable-slim

MAINTAINER Nguyen Binh Son <son@codegym.vn>

RUN apt-get update

RUN apt-get install -y pandoc \
  texlive-latex-base \
  texlive-fonts-recommended \
  fontconfig

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /docs

ENTRYPOINT ["pandoc"]

CMD ["--help"]
