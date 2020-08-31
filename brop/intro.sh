# Insert mtd module (precompiled in environment)
insmod /root/mtd-module/src/mtd.ko

# Track kernel traps (which are used for analytics)
echo "1" >/proc/sys/debug/exception-trace

# Ignore fatal signals which are not
echo "1" >/proc/sys/kernel/print-fatal-signals

# Randomized node id
node_id=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# Add polycorder key and randomized nodeid to polycorder config
echo "" >> /etc/zerotect/zerotect.toml
echo "[polycorder_config]" >> /etc/zerotect/zerotect.toml
echo "auth_key = 'xU9XiObcoKnSNpRhpuwt5Lrem'" >> /etc/zerotect/zerotect.toml
echo "node_id = '$node_id'" >> /etc/zerotect/zerotect.toml

# Restart zerotect to pick up polycorder config
systemctl restart zerotect

# Tell tinyproxy to proxy the graph on localhost
echo "ReversePath \"/\" \"https://polycorder.polyverse.com/v1/events/cwgraph?authorization=QP3t2Nyv3khbq6HEhkkuE0Ccr&pastHours=1&org=false&global=false&nodeId=$node_id\"" >>/etc/tinyproxy/tinyproxy.conf
