# FindMyPi

## A little Bash script whose aim is to help me find my RaspberryPi (model 3) in a local network.

[![DevelopmentStatus](https://img.shields.io/badge/Development-Stopped-red.svg)](https://img.shields.io/badge/Development-Stopped-red.svg)
[![HitCount](http://hits.dwyl.io/Mrcuve0/FindMyPi.svg)](http://hits.dwyl.io/Mrcuve0/FindMyPi)

### Usage:
```
> sudo ./FMP.sh <Network_Interface_Name>
```

### Here's an example:
```
[user@user-PC FindMyPi]$ sudo ./FMP.sh wlp2s0
[sudo] password for user: 
Your IP address: 172.22.103.97/23
Broadcast: 172.22.103.255
Looking for your Raspberry in network: 172.22.103.0/23
Found Raspberry @ 172.22.103.100
Goodbye!
```

