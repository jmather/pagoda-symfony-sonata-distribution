#!/bin/bash
PHP=php

echo 'Clear the cache of the production environment.'
$PHP app/console cache:clear --env=prod
