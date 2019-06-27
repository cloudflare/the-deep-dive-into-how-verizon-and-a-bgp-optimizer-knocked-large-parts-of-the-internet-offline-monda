:

# Extract the timing of the route leak
while read cidr
do
  echo $cidr
  fgrep $cidr < 13335-listing-b.txt | head -1 | cut -f1
  fgrep $cidr < 13335-listing-b.txt | tail -1 | cut -f1
done < 13335-listing-c.txt |\
paste - - - | sort -k2,3 | column -t | sed -e 's/2019-06-24T//g'

