Let's verify that we did indeed scramble packages on the system.

We can do this in multiple ways.

The quick and easy way is to check the source of the package. For Alpine, the command is:

`apk info | xargs apk policy`{{execute}}



