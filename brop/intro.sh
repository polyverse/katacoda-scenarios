# Insert mtd module (precompiled in environment)
insmod /root/mtd-module/src/mtd.ko

# Track kernel traps (which are used for analytics)
echo "1" >/proc/sys/debug/exception-trace

# Ignore fatal signals which are not
echo "1" >/proc/sys/kernel/print-fatal-signals

# Randomized node id
node_id=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# If we don't need this anymore, indicate so it can be removed later.
[[ $(zerotect --help |grep analytics) != "" ]] && echo "Don't need zerotect reinstall" > /.zerotect_reinstall

# Re-install latest zerotect until polyverse-brop environment gets promoted to prod
curl -s -L https://github.com/polyverse/zerotect/releases/latest/download/install.sh | sh

# Add polycorder key and randomized nodeid to polycorder config
echo "" >> /etc/zerotect/zerotect.toml
echo "[polycorder_config]" >> /etc/zerotect/zerotect.toml
echo "auth_key = 'xU9XiObcoKnSNpRhpuwt5Lrem'" >> /etc/zerotect/zerotect.toml
echo "node_id = '$node_id'" >> /etc/zerotect/zerotect.toml

# Restart zerotect to pick up polycorder config
systemctl restart zerotect

mkdir /graph
cd /graph
python -m SimpleHTTPServer 8888 &

# Create bootstrapping index.html
echo "<HTML><HEAD><TITLE>Dashboard</TITLE><meta http-equiv=\"refresh\" content=\"5\"></HEAD><BODY><IMG SRC=\"graph.png\"></BODY></HTML>" >/graph/index.html

# Download graph every 5 seconds
while [ 1 ]; do
    sleep 5
    curl -sL -o /graph/graph.png "http://polycorder.polyverse.com/v1/events/cwgraph?authorization=QP3t2Nyv3khbq6HEhkkuE0Ccr&pastHours=1&org=false&global=false&nodeId=$node_id"
done

