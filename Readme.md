# Docker build for Magento 2 MSI project
The build includes a single image with the web-stack installed and configured (PHP 7.1, Nginx, Mysql). Magento installation is based on the develop branch of the official https://github.com/magento-engcom/msi repository.

## Installation
Clone the repository and run `docker build .` command from the repository root directory. Once the build process is finished you can create a new container from the image.

## Configuration
Nginx host configuration can be changed by editing `hosts/msi.conf` file. For changing Magento installation configuration, feel free to edit `magento-install.sh` file.
