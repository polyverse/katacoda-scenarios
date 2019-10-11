Now we can take a look at the dashboard when a Polyverse-protected version of Nginx is run.

Let’s begin by installing Polyverse...

`curl https://sh.polyverse.io | sh -s install czcw7pjshny8lzzog8bgiizfr webdemo@polyverse.com`{{execute}}

Now that Polymorphic Linux is installed in the container we can add a polymorphic version of Nginx by running the command below.

`sudo apt-get update && sudo apt-get -y install nginx`{{execute}}

Once that has finished updating, restart the Nginx service.

`sudo systemctl restart nginx`{{execute}}
