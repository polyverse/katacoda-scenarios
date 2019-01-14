Great work, you are now subscribed to the Polyverse mirrors. This new repository is completely transparent to you, and does not change how you use your package manager.

In order to get the full power of Polymorphic Linux reinstall all packages. For Alpine, lets run:

`apk update && apk upgrade --available --no-cache && sed -in 's/^#//g' /etc/apk/repositories`{{execute}}

This command updates the package manager metadata and then reinstalls all packages in-place.
