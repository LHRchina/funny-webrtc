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