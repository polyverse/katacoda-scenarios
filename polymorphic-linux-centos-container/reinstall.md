Once we've subscribed to the Polyverse repository, our host will install packages from there by default.  Effectively, all we have done is tell our sytem to install packages from Polyverse's repostory rather than the default repository of our linux distro.  This allows us to leverage the power of polymogrphic binaries to protect ourselves from a wide array of memory exploits.

To reinstall all packages, for CentOS, we run:

`yum reinstall -y \*`{{execute}}

All this command does, is updates the package manager metadata, and reinstalls all packages in-place.

This command reinstalls every package on our system.  Since we have already set our default repository to Polyverse, this allows us to take advantage of the security benefits of Polymorphic Linux.