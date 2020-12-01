#!/usr/bin/env sh

cp -rf /.ssh /root/.ssh
chown -R root:root /root/.ssh
set -x; 
"$@";
