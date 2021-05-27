FROM ghcr.io/php-actions/php-build:v1

LABEL repository="https://github.com/teeps-co/composer-action"
LABEL homepage="https://github.com/teeps-co/composer-action"
LABEL maintainer="Julien Guittard <julien.guittard@me.com>"

RUN curl https://getcomposer.org/download/1.10.19/composer.phar > composer-1.phar
RUN curl https://getcomposer.org/download/2.0.14/composer.phar > composer-2.phar
RUN chmod +x *.phar
RUN ln -s $(pwd)/composer-1.phar /usr/local/bin/composer-1
RUN ln -s $(pwd)/composer-2.phar /usr/local/bin/composer-2
RUN ln -s /usr/local/bin/composer-2 /usr/local/bin/composer
COPY switch-composer-version /usr/local/bin/.

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["help"]
