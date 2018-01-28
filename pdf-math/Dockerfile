FROM debian:stretch-slim

MAINTAINER Nguyen Binh Son <son@codegym.vn>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y pandoc

RUN apt-get install -y texlive-latex-base latex-xcolor texlive-latex-extra

RUN apt-get install -y texlive-xetex texlive-bibtex-extra

RUN apt-get install -y texlive-fonts-recommended fontconfig lmodern

RUN apt-get install -y texlive-math-extra

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /docs

ENTRYPOINT ["pandoc"]

CMD ["--help"]

