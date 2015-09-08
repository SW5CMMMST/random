#!/bin/bash
emoji=$(shuf -n 1 $(dirname $0)/emojilist.txt | tr -d '\n' | tr -d '\r')
manyEmojies=$(shuf -n 20 $(dirname $0)/emojilist.txt | tr '\n' '  ' | tr -d '\r')
slackcli -h bot -u "Emoji Man" -e "$emoji" -m "$manyEmojies" 
