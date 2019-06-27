:

# Collect 24 hours of data - more than enough
ASN="AS13335"
START="2019-06-24T00:00:00"
END="2019-06-25T00:00:00"
ARGS="resource=${ASN}&starttime=${START}&endtime=${END}"
URL="https://stat.ripe.net/data/bgp-updates/data.json?${ARGS}"
# Fetch the data from RIPEstat
curl -sS "${URL}" | jq . > 13335-routes.json
ls -l 13335-routes.json

