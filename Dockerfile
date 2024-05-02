#FROM wyveo/nginx-php-fpm:php82
#RUN apt-key del DEB.SURY.ORG
#RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

#RUN apt-get update 
#RUN apt-get -o DPkg::Options::="--force-confnew" -y install php8.2-soap
#COPY ./default.conf /etc/nginx/conf.d/default.conf
#COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf
#EXPOSE 80

FROM wyveo/nginx-php-fpm:php81
RUN apt-get update 
RUN apt-get -o DPkg::Options::="--force-confnew" -y install php8.1-soap
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./www.conf /etc/php/8.1/fpm/pool.d/www.conf
EXPOSE 80
