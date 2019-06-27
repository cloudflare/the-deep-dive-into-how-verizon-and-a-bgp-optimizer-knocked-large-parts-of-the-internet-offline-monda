:

# Extract the AS-PATH of the route leak
# Use the list of routes to extract the full AS-PATH
# Merge the results together to show an amalgamation of paths.
# We know (luckily) the last few ASNs in the AS-PATH are consistent
cut -f3 < 13335-listing-b.txt | tr -d '[\[\]]' |\
awk '{
  n=split($0, a, ",");
  printf "%50s\n",
    a[n-5] "_" a[n-4] "_" a[n-3] "_" a[n-2] "_" a[n-1] "_" a[n];
}' | sort -u

