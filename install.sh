#!/usr/bin/env bash
set -e

trap "printf \"\e[0m\"" EXIT

printf "\e[33m[~] Downloading script...\e[0m\n"
curl -L#o /var/tmp/shr_$$ https://raw.githubusercontent.com/parkjs814/sh-remote/master/bin/shr
echo

printf "\e[33m[~] Setting permissions...\e[0m\n"
chmod -v +x /var/tmp/shr_$$
echo

printf "\e[33m[~] Moving to \$PATH...\e[0m\n"
sudo mv -fv /var/tmp/shr_$$ /usr/local/bin/shr
echo

version=($(shr -V))
printf "\e[32m[✔] Successfully installed sh-remote v${version}\e[32m!\n"