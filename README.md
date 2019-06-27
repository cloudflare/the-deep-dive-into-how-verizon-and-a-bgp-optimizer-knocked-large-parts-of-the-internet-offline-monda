# The Deep Dive Scripts

## Introduction
The [The deep-dive into how Verizon and a BGP Optimizer Knocked Large Parts of the Internet Offline Monday](https://blog.cloudflare.com/the-deep-dive-into-how-verizon-and-a-bgp-optimizer-knocked-large-parts-of-the-internet-offline-monday/) blog contained various scripts. This repository contains those scripts and the data file (so you don't need to query [RIPEstat](https://stat.ripe.net) for it.

The first blog on this route leak event is published as [How Verizon and a BGP Optimizer Knocked Large Parts of the Internet Offline Today](https://blog.cloudflare.com/how-verizon-and-a-bgp-optimizer-knocked-large-parts-of-the-internet-offline-today/).

## Scripts

* ```deep-dive-script-a.sh``` - Collect 24 hours of data - more than enough
* ```deep-dive-script-b.sh``` - Extract just the times, routes, and AS-PATH
* ```deep-dive-script-c.sh``` - Extract the route leak 701,396531
* ```deep-dive-script-d.sh``` - Extract the actual routes affected by the route leak
* ```deep-dive-script-e.sh``` - Extract the timing of the route leak
* ```deep-dive-script-f.sh``` - Extract the AS-PATH of the route leak

## Data

* ```13335-routes.json.bz2``` - a compressed copy of the data used in the blog

You can uncompress this data file via:

```
$ bunzip2 13335-routes.json.bz2
$ ls -l 13335-routes.json
```

# Running the scripts

If you uncompress the data file; you do not need to run the first script. You will also save RIPE some database time as the archive data is now collected and constant.

```
$ # bash ./deep-dive-script-a.sh
$ bash ./deep-dive-script-b.sh
$ bash ./deep-dive-script-c.sh
$ bash ./deep-dive-script-d.sh
$ bash ./deep-dive-script-e.sh
$ bash ./deep-dive-script-f.sh
```

