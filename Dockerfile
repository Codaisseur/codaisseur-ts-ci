FROM mhart/alpine-node:8

MAINTAINER Codaisseur <oss@codaisseur.com>

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less bash build-base && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

RUN yarn global add typescript

WORKDIR /app

ONBUILD ADD . /app

ENTRYPOINT "/bin/bash"

CMD ["/bin/bash"]