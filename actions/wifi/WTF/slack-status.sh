#!/bin/bash

PROFILE_TEXT="At home"
PROFILE_ICON=":house_with_garden:"

/usr/bin/curl https://slack.com/api/users.profile.set --data-urlencode "token=$SLACK_TOKEN" --data-urlencode "profile={\"status_text\":\"${PROFILE_TEXT}\",\"status_emoji\":\"${PROFILE_ICON}\"}"