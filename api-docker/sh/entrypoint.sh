#!/usr/bin/env sh

echo $GUNICORN_CMD_ARGS
pipenv sync 
pipenv run gunicorn app:app
