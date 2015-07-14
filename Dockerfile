FROM alpine
MAINTAINER takninnovationresearch@gmail.com

RUN apk --update add python py-pip \
  && pip install speedtest-cli==0.3.2 \
  && rm -rf /var/cache/apk/*

CMD ["/usr/bin/speedtest-cli", "--list"]
