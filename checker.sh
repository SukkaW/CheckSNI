#!/bin/bash
for a in $@
do
    for ((i=0;i<256;i++))
    do
        urls=${a}"."${i}
        echo $urls
        #urls_status_code=$(curl -o /dev/null -s -m 10 --connect-timeout 10 -w %{http_code} "$urls")
        #if [ "$urls_status_code" = "200" ]; then
        #    echo pass!
        #fi
    done
done