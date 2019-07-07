lampenip='192.168.2.143'

curl -s 'http://$lampenip/set?bottom=0&middle=0&top=0' && sleep 0.2 && curl -s 'http://$lampenip/set?bottom=1&middle=0&top=0' && sleep 0.2 && curl -s 'http://$lampenip/set?bottom=1&middle=1&top=0' && sleep 0.2 && curl -s 'http://$lampenip/set?bottom=1&middle=1&top=1'
