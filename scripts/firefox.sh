path=$(find ~/.mozilla/firefox/*.default-*/places.sqlite)
query="select p.url from moz_historyvisits as h, moz_places as p where substr(h.visit_date, 0, 11) >= strftime('%s', date('now')) and p.id == h.place_id order by h.visit_date;"
urls=$(sqlite3 "$path" "$query")
url=$(echo -e $url | sed "s/ /\n/g")
echo -e $url
