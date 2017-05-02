FROM ubuntu:16.04
MAINTAINER Elton Kola "https://github.com/eltonkola"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      apache2 \
      php7.0 \
      libapache2-mod-php7.0 \
      php7.0-gd \
      php7.0-xml \
      php7.0-xsl \
      php7.0-zip \
      joe

VOLUME ["/workingdir"]

COPY apache_default /etc/apache2/sites-available/000-default.conf
COPY run /usr/local/bin/run
COPY index.php /var/www

RUN chmod +x /usr/local/bin/run
RUN chmod u+rwX,go+r /workingdir

EXPOSE 80
CMD ["/usr/local/bin/run"]
