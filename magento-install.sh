#!/bin/bash
#
# Install Magento
#

mkdir /home/dev/sites/msi
cd /home/dev/sites/msi
git clone https://github.com/magento-engcom/msi.git .
composer install
mysql -u root -e "create database msi"
mysql -u root -e "create database msi_integration_tests"
php bin/magento setup:install --admin-firstname=admin --admin-lastname=admin --admin-email=y.rogoza@atwix.com --admin-user=admin --admin-password=Y111111 --backend-frontname=admin --db-name=msi --base-url=http://docker.mage2msi.loc:8086/
