#!/bin/bash

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Set the application key
php artisan key:generate --force

# Run database migrations
php artisan migrate --force

# Seed the database
php artisan db:seed --force

# Cache configuration for production
php artisan config:cache
php artisan route:cache
php artisan view:cache
