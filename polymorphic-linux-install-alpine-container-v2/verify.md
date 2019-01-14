How do we know that the packages are scrambled? Let's verify that we did indeed secure the packages on the system.

This can be done in many ways however, the quickest and easiest way is to check the source of the package. For Alpine, the command is:

`apk info | xargs apk policy`{{execute}}

