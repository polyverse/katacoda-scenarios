git clone https://github.com/polyverse/mtd-module.git
cd mtd-module/src
make ubuntu
sudo insmod mtd.ko
echo "install mtd insmod $PWD/mtd.ko" > /etc/modprobe.d/mtd.conf