FROM ubuntu:18.04
ENV LC_CTYPE C.UTF-8
RUN apt-get update && apt-get install -y strace ltrace curl wget gcc net-tools vim gdb python python3 python3-pip wget git make procps libpcre3-dev libdb-dev libxt-dev libxaw7-dev python-pip && (wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh) && pip install capstone && mkdir tools && cd tools && git clone https://github.com/JonathanSalwan/ROPgadget && pip3 install keystone-engine && pip3 install unicorn && pip3 install capstone && pip3 install ropper && pip3 install keystone-engine && pip install requests && pip install pwn && git clone https://github.com/radare/radare2 && cd radare2 && sys/install.sh && pip install r2pipe && dpkg --add-architecture i386 && apt update && apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 && wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2?revision=bc2c96c0-14b5-4bb4-9f18-bceb4050fee7?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,7-2018-q2-update
