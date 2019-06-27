:

# Extract just the times, routes, and AS-PATH
jq -rc '.data.updates[]|.timestamp,.attrs.target_prefix,.attrs.path' < 13335-routes.json | paste - - - > 13335-listing-a.txt
wc -l 13335-listing-a.txt

