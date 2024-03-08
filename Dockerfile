FROM httpd:2.4.58

RUN apt-get update && apt-get install -y \
	php8.2 \
	libapache2-mod-php8.2 \
	php8.2-mbstring \
	php8.2-xml

RUN ln -s /usr/lib/apache2/modules/libphp8.2.so /usr/local/apache2/modules/libphp8.2.so

COPY ./htdocs /usr/local/apache2/htdocs/
COPY ./httpd.conf /usr/local/apache2/conf/

CMD httpd -D FOREGROUND
