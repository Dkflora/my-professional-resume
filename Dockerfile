FROM httpd

RUN apt-get update && \
    apt-get install -y --only-upgrade libssh2-1t64 && \
    apt-get install -y nano vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./index.html /usr/local/apache2/htdocs/

EXPOSE 80