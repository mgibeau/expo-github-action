#!/bin/sh -l

set -e

cat /proc/sys/fs/inotify/max_user_watches

if [ -n "$EXPO_CLI_USERNAME" ] && [ -n "$EXPO_CLI_PASSWORD" ]; then
	expo login --username $EXPO_CLI_USERNAME
else
	echo 'Skipping Expo login, username and/or password not defined...'
fi

sh -c "expo $*"
