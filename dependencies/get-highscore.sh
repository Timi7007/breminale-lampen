curl -s https://grafana.ffhb.de/api/datasources/proxy/3/query\?db\=ffhb-events\&q\=SELECT%20max\(%22clients.total%22\)%20FROM%20%22global%22%20WHERE%20time%20%3E\=%20now\(\)%20-%201d%20and%20time%20%3C\=%20now\(\)%20-%2030s | jq '.results' | grep -b1 'Z' | grep '213-            ' | cut -c17-