FROM mhart/alpine-node:11

MAINTAINER Codaisseur <oss@codaisseur.com>

RUN apk --no-cache update && \
    apk --no-cache add curl python postgresql-dev py-pip py-setuptools ca-certificates curl groff less bash build-base && \
    pip --no-cache-dir install --upgrade pip && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

# Install gyp packages
RUN yarn global add typescript grpc bcrypt

WORKDIR /app

ENTRYPOINT "/bin/bash"

CMD ["/bin/bash"]
