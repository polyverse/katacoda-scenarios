Let's verify that we did indeed scramble packages on the system.

We can do this in multiple ways.

The quick and easy way is to check the source of the package. For Ubuntu, the command is:

`dpkg --get-selections | awk '{print $1}' | xargs apt-cache madison | grep -i polyverse`{{execute}}

To dig a little deeper, we can verify each binary for a `PV` signature that we add to every executable
we build.

`echo "Todo"`{{execute}}

