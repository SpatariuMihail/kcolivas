ATT: the drivers and file were copied directly from bitmaintec bmminer-mix. 
it compiles ok on Debian Jessie armhf.


compiling on linux: 
 1. apt-get update
 2. apt-get install build-essential git autoconf automake pkg-config libtool libcurl4-openssl-dev libncurses5-dev 
 3. apt-get install libusb-1.0-0-dev libudev-dev uthash-dev libjansson-dev  zlib1g-dev zlib1g  libc6-dev  dpkg-dev                 
4. cd /home
5. mkdir develop
6. cd develop
7. git clone hhttps://github.com/SpatariuMihail/kcolivas.git
8. cd kcolivas 
9. git checkout -b S9-bmm origin/S9-bmm
10. git pull
11. ./autogen.sh
12. autoconf
13. automake
14. ./configure --enable-bitmain-c5
15. make


Cross-compiling for Angstrom linux

1. apt-get update
 2. apt-get install build-essential git autoconf automake pkg-config libtool libcurl4-openssl-dev libncurses5-dev 
 3. apt-get install libusb-1.0-0-dev libudev-dev uthash-dev libjansson-dev  zlib1g-dev zlib1g  libc6-dev  dpkg-dev                 
4. cd /home
5. mkdir develop
6. cd develop
7. git clone https://github.com/SpatariuMihail/kcolivas.git
8. cd kcolivas 
9. git checkout -b S9-bmm origin/S9-bmm
10. git pull
11. ./autogen.sh
12. autoconf
13. automake
