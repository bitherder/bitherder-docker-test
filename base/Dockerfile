FROM debian:testing

MAINTAINER Larry Baltz <larry@baltz.org>

ADD root /

RUN apt-get update && apt-get install -y build-essential ssh lsof runit less

RUN ln -s /etc/sv/ssh /etc/service \
    && addgroup --system logger \
    && adduser --system --no-create-home --disabled-password --disabled-login --ingroup logger logger \
    && chown -R logger:logger /var/log

ENTRYPOINT ["/usr/local/sbin/runit-w-env"]

EXPOSE 22

