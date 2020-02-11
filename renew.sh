#!/usr/bin/env bash

sudo systemctl stop apache2
./projects/certbot/certbot-auto certonly --apache --rsa-key-size 4096 -d msdt.eu -d mail.msdt.eu -d imap.msdt.eu -d smtp.msdt.eu -d heimdall.msdt.eu -d nextcloud.msdt.eu -d www.msdt.eu --dry-run
./projects/certbot/certbot-auto certonly --apache --rsa-key-size 4096 -d pranzl.net -d www.pranzl.net --dry-run
sudo systemctl start apache2

