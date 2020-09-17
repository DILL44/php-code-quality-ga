#!/bin/sh -l

php-cs-fixer --version
phpmd --version
phpstan --version

$*
