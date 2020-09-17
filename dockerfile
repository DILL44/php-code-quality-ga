FROM php:7.4-alpine

RUN apk --no-cache add curl

RUN curl -L https://cs.symfony.com/download/php-cs-fixer-v2.phar\
        -o /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer
RUN curl -L http://static.phpmd.org/php/latest/phpmd.phar  \
        -o /usr/local/bin/phpmd \
    && chmod +x /usr/local/bin/phpmd
RUN curl -L https://github.com/phpstan/phpstan/releases/download/0.12.42/phpstan.phar\
        -o /usr/local/bin/phpstan \
    && chmod +x /usr/local/bin/phpstan

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
