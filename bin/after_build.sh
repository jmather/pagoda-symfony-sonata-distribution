#!/bin/bash
PHP=php

echo 'Copy the distributed YAML parameters to the required parameters.yml.'
cp app/config/parameters.pagoda.yml app/config/parameters.yml

echo 'Clear cache forcably.'
rm -rf app/cache/*

echo 'Download the composer.phar file, so the vendors can be installed from the distributed composer.json.'
if [ ! -f composer.phar ]
    then
        curl -s -O http://getcomposer.org/composer.phar
fi

echo 'Install the needed vendors for this application.'
$PHP composer.phar install --quiet