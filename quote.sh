#!/bin/bash
json="$(curl -s 'http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json')"
quote="$(echo $json | jq '.quoteText' | tr -d '"')"
person="$(echo $json | jq '.quoteAuthor' | tr -d '"')"
slackcli -h random -u "$person" -m "$quote" 
