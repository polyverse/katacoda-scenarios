# Insert mtd module (precompiled in environment)
insmod /root/mtd-module/src/mtd.ko

# Track kernel traps (which are used for analytics)
echo "1" >/proc/sys/debug/exception-trace

# Ignore fatal signals which are not
echo "0" >/proc/sys/kernel/print-fatal-signals