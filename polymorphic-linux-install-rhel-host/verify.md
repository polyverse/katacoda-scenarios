Let's verify that we did indeed scramble packages on the system.

We can do this in multiple ways.

The quick and easy way is to check the source of the package. For Red Hat Enterprise Linux, the command is:

`rpm -qa vendor="*Polyverse*"`{{execute}}

To dig a little deeper, we can verify each binary for a `PV` signature that we add to every executable
we build.


