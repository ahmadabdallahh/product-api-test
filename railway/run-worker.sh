#!/bin/bash

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Process queue workers
php artisan queue:work --sleep=3 --tries=3 --max-time=3600
