#!/bin/sh

# Run Composer install to ensure dependencies are available
composer install --no-interaction --prefer-dist --optimize-autoloader

# Execute the passed command (this will be `php -S 0.0.0.0:8000 -t public` by default)
exec "$@"
