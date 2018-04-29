apt-get update
apt-get upgrade -y

# Basic
apt-get install -y software-properties-common curl zip unzip apt-utils git nano

# PPA
add-apt-repository ppa:ondrej/php -y
apt-get update

# Timezone
ln -sf /usr/share/zoneinfo/UTC /etc/localtime

# PHP7.2
apt-get install -y --allow-unauthenticated php7.2
# PHP7.2 modules.
apt-get install -y --allow-unauthenticated php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml \
php7.2-pgsql php7.2-sqlite3 php7.2-soap php7.2-json php7.2-gmp php7.2-imap php-apcu php-redis

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install Node
curl --silent --location https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
npm install -g yarn

# Install SQLite
apt-get install -y sqlite3 libsqlite3-dev

# PDF
apt-get install -y --allow-unauthenticated libgtk2.0-0 libgdk-pixbuf2.0-0 libfontconfig1 libxrender1 libx11-6 libglib2.0-0 \
libxft2 libfreetype6 libc6 zlib1g libpng12-0 libstdc++6-4.8-dbg-arm64-cross libgcc1
