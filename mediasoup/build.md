###OS
Linux

###OS Release
CentOS

###OS Release
````
#lsb_release -a
LSB Version:    :core-4.1-amd64:core-4.1-noarch
Distributor ID: CentOS
Description:    CentOS Linux release 7.8.2003 (Core)
Release:    7.8.2003
Codename:   Core
````

###Upgrate gcc version
```
# yum install centos-release-scl-rh
# yum install devtoolset-8-toolchain
# scl enable devtoolset-8 bash
```

###Build mediasoup
````
git clone https://github.com/versatica/mediasoup.git
cd mediasoup/worker
MEDIASOUP_BUILDTYPE=Debug make

````

##docker run 
````
MEDIASOUP_MIN_PORT=33000; MEDIASOUP_MAX_PORT=33100; sudo docker run -d --rm --name mediasoup -p 4443:4443 -p $MEDIASOUP_MIN_PORT-$MEDIASOUP_MAX_PORT:$MEDIASOUP_MIN_PORT-$MEDIASOUP_MAX_PORT/udp -e "MEDIASOUP_ANNOUNCED_IP=10.200.200.46" -e "DEBUG=mediasoup:DEBUG*" -e "MEDIASOUP_MIN_PORT=$MEDIASOUP_MIN_PORT" -e "MEDIASOUP_MAX_PORT=$MEDIASOUP_MAX_PORT" mediasoup-demo
````