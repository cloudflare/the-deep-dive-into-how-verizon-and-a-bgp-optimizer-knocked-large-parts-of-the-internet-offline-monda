:

# Extract the route leak 701,396531
# AS701 is Verizon and AS396531 is Allegheny Technologies
egrep '701,396531' < 13335-listing-a.txt > 13335-listing-b.txt
wc -l 13335-listing-b.txt

