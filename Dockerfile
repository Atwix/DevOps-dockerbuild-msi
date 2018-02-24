#
# Magento 2 MSI container with PHP7.1 and Nginx
#

FROM php71_nginx_clean
MAINTAINER Yaroslav Rogoza "y.rogoza@atwix.com"

COPY ./init.sh /root
COPY ./hosts/msi.conf /etc/nginx/sites-available
COPY ./magento-install.sh /home/dev
RUN ln -s /etc/nginx/sites-available/msi.conf /etc/nginx/sites-enabled/msi.conf ; \
  chmod +x /root/init.sh ; \
  /root/init.sh ; \
  chown dev:dev /home/dev/magento-install.sh ; \
  chmod +x /home/dev/magento-install.sh ; \
  su dev ; \
  /home/dev/magento-install.sh ; \
  chown -R dev:dev /home/dev/sites/msi

EXPOSE 80 22

CMD bash
