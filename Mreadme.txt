ATT: the drivers and file were copied directly from bitmaintec bmminer-mix. 
it compiles ok on Debian Jessie armhf.


compiling on linux: 
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
11. ./autogen.sh. (if you get "permission denied" then run "chmod 755 *" first)
12. autoconf
13. automake
14. ./configure --enable-bitmain-c5 
15. make
16. make api-example
17. cp api-example cgminer-api




Cross-compiling for Angstrom linux is maybe unneccesary... compiling for armhf can be done on any ROOTED Android device via Linux Deploy - just install Debian -jessie - armhf 
LinuxDeploy can also add an external mount point (like a folder on your SD card) where you can copy your resulted files.  

Will update here as I go this way...
