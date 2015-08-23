FROM bitherder/ruby:2.2

MAINTAINER Larry Baltz <larry@baltz.org>

ADD root /
RUN ln -s /etc/sv/stub-app /etc/service \
    && touch /var/log/stub-app \
    && chown -R logger:logger /var/log/stub-app

ADD . /opt/stub-app
RUN cd /opt/stub-app; bundle install

EXPOSE 3000
