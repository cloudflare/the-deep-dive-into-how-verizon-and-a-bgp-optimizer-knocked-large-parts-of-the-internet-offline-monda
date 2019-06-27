:

# Extract the actual routes affected by the route leak
cut -f2 < 13335-listing-b.txt | sort -n | uniq > 13335-listing-c.txt
wc -l 13335-listing-c.txt

