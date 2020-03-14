FROM ubuntu:18.04
COPY ./core/requirements.pip /home/point/requirements.pip
VOLUME ["/home/point/core", "/home/point/img"]
RUN \
    echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections; \
    apt-get install -y -q && \
    apt-get update && \
    apt-get install -y \
      build-essential \
      libevent-dev \
      libfreetype6-dev \
      libjpeg-dev \
      libjpeg8-dev \
      libmagic-dev \
      libpq-dev \
      libxml2-dev \
      libxslt1-dev \
      python-dateutil \
      python-dev \
      python-dnspython \
      python-levenshtein \
      python-lxml \
      python-meld3 \
      python-pil \
      python-pip \
      python-redis \
      python-requests \
      python-setproctitle \
      python-six \
      python-tz \
      python-unidecode \
      python-urllib3 \
      zlib1g-dev \
    && \
    pip install -r /home/point/requirements.pip
