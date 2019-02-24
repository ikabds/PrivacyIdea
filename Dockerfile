FROM ubuntu:16.04 

RUN export http_proxy=${HTTP_PROXY} && export https_proxy=${HTTP_PROXY} && \
    echo "deb http://ppa.launchpad.net/privacyidea/privacyidea/ubuntu xenial main" > /etc/apt/sources.list.d/privacyidea.list && \
    echo "deb-src http://ppa.launchpad.net/privacyidea/privacyidea/ubuntu xenial main" >> /etc/apt/sources.list.d/privacyidea.list && \
    apt-get update && apt-get -y --allow-unauthenticated install python-privacyidea privacyideaadm python-psycopg2 nano && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /var/log/privacyidea && \
    ln -sf /dev/stdout /var/log/privacyidea/privacyidea.log

ENTRYPOINT [ "pi-manage", "runserver", "--host", "0.0.0.0", "--port", "5000"]