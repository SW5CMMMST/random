#!/bin/bash
number=$RANDOM
let 'number %= 25'
getTitleArg=".data.children["$number"].data.title"
getJokeArg=".data.children["$number"].data.selftext"
botName="reddit.com/r/jokes"
channel="bot"
json="$(curl -s 'https://www.reddit.com/r/jokes.json?sort=popular')"
title="$(echo $json | jq $getTitleArg | tr -d '"' | sed 's/\\/\"/g')"
joke="$(echo $json | jq $getJokeArg | sed 's/\\n/\ \ \ /g' | tr -d '"' | sed 's/\\/\"/g')"
slackcli -h "$channel" -u "$botName" -e ":rooster:" -m "$title"
slackcli -h "$channel" -u "$botName" -e ":rooster:" -m "$joke" 
