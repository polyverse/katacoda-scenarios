Let's verify that we did actually scramble packages on the system

We can do this in multiple ways.

The quick and easy way is to check the source of the package. For Ubuntu, the command is:

`dpkg --get-selections | awk '{print $1}' | xargs apt-cache madison | grep -i polyverse`{{execute}}



