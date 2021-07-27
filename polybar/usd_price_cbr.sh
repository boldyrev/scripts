#!/bin/sh

DATA=$(curl -s 'https://www.cbr-xml-daily.ru/daily_json.js' | jq -r '.Valute.USD.Value')
LC_NUMERIC="en_US.UTF-8" printf "%0.1f\n" $DATA