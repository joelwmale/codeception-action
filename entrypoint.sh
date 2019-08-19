#!/bin/sh -l

# set env file | default to .env.testing
ENV_FILE="${ENV_FILE:-.env.testing}"

# if the framework is laravel and env_file is set
if [ -n "$FRAMEWORK" ] && [ "$FRAMEWORK" == "laravel" ]; then
    # copy the env file
    cp $ENV_FILE .env
    # generate a new key
    php artisan key:generate
    # run migrations
    php artisan migrate
fi

# Run codeception tests
vendor/bin/codecept run $*
