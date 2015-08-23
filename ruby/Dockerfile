FROM bitherder/base:latest

MAINTAINER Larry Baltz <larry@baltz.org>

RUN apt-get update \
    && apt-get install -y libruby2.2 ruby2.2 ruby2.2-dev

RUN update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby2.2 20202 \
      $(echo \
        $(\
          for s in $(ls /usr/bin/*2.2 | grep -v ruby); do \
            wov=$(echo $s | sed -r 's/([0-9]*\.)*[0-9]//'); \
            b=$(basename $wov); \
            echo --slave $wov $b $s; \
          done \
        ) \
      ) \
      && gem install bundler --no-document
