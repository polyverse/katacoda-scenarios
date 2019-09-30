Now lets take a look at what this looks like when we run a Polyverse version of Nginx.

Fist we install polyverse...

`curl https://sh.polyverse.io | sh -s install czcw7pjshny8lzzog8bgiizfr webdemo@polyverse.io`{{execute}}

Now that polyverse is installed we can install a polymorphic version of Nginx

`apt update && apt -y install nginx`{{execute}}

Once that has finished updating, restart the Nginx service

`sudo systemctl restart nginx`{{execute}}
