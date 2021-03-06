# Insert mtd module (precompiled in environment)
insmod /root/mtd-module/src/mtd.ko

# Track kernel traps (which are used for analytics)
echo "1" >/proc/sys/debug/exception-trace

# Ignore fatal signals which are not
echo "1" >/proc/sys/kernel/print-fatal-signals

# Randomized node id
random_str=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
node_id="katacoda_brop_demo_$random_str"

# Add polycorder key and randomized nodeid to polycorder config
echo "" >> /etc/zerotect/zerotect.toml
echo "[polycorder]" >> /etc/zerotect/zerotect.toml
echo "auth_key = 'xU9XiObcoKnSNpRhpuwt5Lrem'" >> /etc/zerotect/zerotect.toml
echo "node_id = '$node_id'" >> /etc/zerotect/zerotect.toml
echo "" >> /etc/zerotect/zerotect.toml
echo "[analytics]" >> /etc/zerotect/zerotect.toml
echo "mode = 'Passthrough'" >> /etc/zerotect/zerotect.toml
echo "justification = 'Summary'" >> /etc/zerotect/zerotect.toml
echo "" >> /etc/zerotect/zerotect.toml



# Restart zerotect to pick up polycorder config
systemctl restart zerotect

mkdir /graph
cd /graph
python -m SimpleHTTPServer 8888 &

# Create bootstrapping index.html
echo "<HTML><HEAD><TITLE>Dashboard</TITLE><meta http-equiv=\"refresh\" content=\"5\"></HEAD><BODY><IMG SRC=\"graph.png\" style=\"max-width: 100%;height: auto;\"></BODY></HTML>" >/graph/index.html

# Download graph every 5 seconds
while [ 1 ]; do
    sleep 5
    curl -sL -o /graph/graph.png "http://polycorder.polyverse.com/v1/events/cwgraph?authorization=QP3t2Nyv3khbq6HEhkkuE0Ccr&pastHours=1&org=false&global=false&nodeId=$node_id"
done

