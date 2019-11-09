install:
	composer install

setup: install env key
	php artisan migrate

setup-ci: install env key

db-reset:
	php artisan migrate:fresh

lint:
	composer phpcs

fix-lint:
	composer phpcbf

test:
	composer phpunit

run:
	php artisan serve

key:
	php artisan key:generate

env:
	cp -n .env.example .env || true

ide-helper:
	php artisan clear-compiled
	php artisan ide-helper:generate
	php artisan ide-helper:meta
