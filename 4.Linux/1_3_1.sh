#!/bin/bash
if [ $# == 0 ]
then
 read -p "Input USD or EUR: " X
else
 X=$1
fi

case ${X} in
"USD") PREFIX="usd-byn"
;;
"EUR") PREFIX="eur-byn"
;;
esac

URL_SITE="https://ru.investing.com/currencies/${PREFIX}"
RATE="$(wget --quiet -O - ${URL_SITE} | grep -E -o '<span class=\"text-2xl[^>]*>([^<]*)<\/span>' | sed 's/^.*<span[^>]*>//;s/<.*//')"
echo "${PREFIX}: ${RATE}"
