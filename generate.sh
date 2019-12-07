#!/bin/bash

set -e

latest=7.4
main_suite=alpine

php_version=$1
suite=$2

if [ "$2" = "$DEBIAN_SUITE" ]; then
    distro=debian
else
    distro=alpine
fi

dir="$php_version/$suite"
dockerfile="$dir/Dockerfile"

mkdir -p "$dir"

echo $'# Generated via generate.sh. Please don\'t edit directly\n' > $dockerfile

sed -r \
    -e "s!%%version%%!$php_version!" \
    -e "s!%%debian_suite%%!$DEBIAN_SUITE!" \
    "Dockerfile-$distro.template" >> $dockerfile

cp docker-php-ext-disable "$dir"

# Docker Hub push hook
mkdir -p "$dir/hooks"

tags="$php_version-$suite"

if [ "$suite" == "$main_suite" ]; then
    tags="$php_version $tags"
fi

if [ "$php_version" == "$latest" ]; then
    tags="$suite $tags"
fi

if [ "$suite" == "$main_suite" ] && [ "$php_version" == "$latest" ]; then
    tags="latest $tags"
fi

sed "s!%%tags%%!$tags!" push.template > "$dir/hooks/push"
