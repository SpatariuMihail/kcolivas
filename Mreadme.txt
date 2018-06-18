compiling on linux: 
 1. apt-get update
 2. apt-get install buils-essential git autoconf automake pkg-config libtool libcurl4-openssl-dev libncurses5-dev /
                   libusb-1.0-0-dev libudev-dev uthash-dev libjansson-dev
                   
3. cd /home
4. mkdir develop
5. cd develop
6. git clone https://github.com/SpatariuMihail/kcolivas/new/S9-bmm.git
7. cd kcolivas 
8. git checkout -b S9-bmm origin/S9-bmm
9. ./autogen.sh
10. autoconf
11. automake
12. ./configure --enable-bitmain-c5
13. make
