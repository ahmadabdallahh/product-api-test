#!/bin/bash

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

# Start the Laravel server
php artisan serve --host=0.0.0.0 --port=$PORT
