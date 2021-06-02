#rc-service grafana
rc-service telegraf start

#grafana-server -homepath /usr/share/grafana -config /etc/grafana.ini
grafana-server -config "/etc/grafana.ini" -homepath "/usr/share/grafana"

tail -f /dev/null
