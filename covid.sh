#!/bin/bash

URL="https://www.city.hiratsuka.kanagawa.jp/kenko/page21_00051.html"
KWD="本日の発生状況"

DATE=` curl --silent $URL | grep -B 1 -A 23 $KWD | xq -r '.table.tbody.tr[0].td[0]."#text"'`
COUNT=`curl --silent $URL | grep -B 1 -A 23 $KWD | xq -r '.table.tbody.tr[0].td[1].strong'`

echo "平塚市の${DATE}コロナ新規感染者数は${COUNT}です。"
