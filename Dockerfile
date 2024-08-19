FROM dunglas/frankenphp
 
RUN install-php-extensions \
    pcntl \ 
    pdo_mysql \
	gd \
	intl \
	zip \
	opcache
 
COPY . /app
 
ENTRYPOINT ["php", "artisan", "octane:frankenphp"]