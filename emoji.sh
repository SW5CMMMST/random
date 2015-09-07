#!/bin/bash
emoji=$(shuf -n 1 ./emojilist.txt | tr -d '\n' | tr -d '\r')
manyEmojies=$(shuf -n 20 ./emojilist.txt | tr '\n' '  ' | tr -d '\r')
slackcli -h bot -u "Emoji Man" -e "$emoji" -m "$manyEmojies" 
