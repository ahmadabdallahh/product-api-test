#!/bin/bash

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Run Laravel scheduler
while true; do
    php artisan schedule:run
    sleep 60
done
