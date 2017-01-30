FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.3

RUN gem install bbmb --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bbmb_admin"]
CMD ["--help"]
