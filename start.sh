#!/bin/sh

# Install dependencies if vendor folder doesn't exist
if [ ! -d "/app/vendor" ]; then
    cd /app
    composer install --no-dev --optimize-autoloader
fi

# Run migrations if not already done
cd /app
php artisan migrate --force --no-interaction

# Start the PHP development server
php -t /app/public -S localhost:8080
