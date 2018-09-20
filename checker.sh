#!/bin/bash
mkdir deploy
for a in $@
do
    for ((i=1;i<256;i++))
    do
        urls=${a}"."${i}
        echo $urls
        urls_status_code=$(curl -o /dev/null -s -m 10 --connect-timeout 4 -w %{http_code} "http://${urls}/ww1.sinaimg.com/small/0072Lfvtly1ftyzouv1h6j3020020glm.jpg")
        if [ "$urls_status_code" = "200" ]; then
            echo -e ${urls} >> ./deploy/ip.list
        fi
    done
done
