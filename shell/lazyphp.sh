#!/bin/bash
CONTROLLER="Controller"

php artisan make:model $1
php artisan make:controller "$1${CONTROLLER}"
