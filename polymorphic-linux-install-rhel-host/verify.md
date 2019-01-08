How do we know that the packages are scrambled? Let's verify that we did indeed secure the packages on the system.

The quickest and easiest way is to check the source of the package. For Red Hat Enterprise Linux, the command is:

`rpm -qa vendor="*Polyverse*"`{{execute}}

To dig a little deeper, we can verify each binary for a `PV` signature that we add to every executable
we build.


