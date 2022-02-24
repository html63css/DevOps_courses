#!/bin/bash
USER_AGENT='Mozilla/5.0 (X11; Linux x86_64; rv:97.0) Gecko/20100101 Firefox/97.0'
LOGIN="TestAccountSasha"
PASS="3310732357as"
$(wget -U ${USER_AGENT} -q -O /dev/null https://passport.yandex.ru/auth --post-data="login=${LOGIN}&passwd=${PASS}" --save-cookies=COOKIES_AUTH)
COUNT=$(wget -U ${USER_AGENT} -q -O - https://mail.yandex.ru/ --load-cookie=COOKIES_AUTH --save-cookies=COOKIES.txt | grep -E -o '<span class="b-messages__firstline">[^<]*<\/span>' | wc -l)
rm -r COOKIES_AUTH
echo "Number of messages in inbox: ${COUNT}"
