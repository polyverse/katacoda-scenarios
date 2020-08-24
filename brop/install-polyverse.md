Now let's install Polymorphic Linux.

`curl https://sh.polyverse.io | sh -s install JNQ0WGbinpS7iOKOpsaos4cpm webdemo@polyverse.com`{{execute}}

We just add our repositories to sources.list, allowing you to download Polymorphic versions of standard Linux packages and libraries, including Nginx.

Use this command to install a polymorphic version of Nginx.

`sudo apt-get update && sudo apt-get -y install --reinstall nginx`{{execute}}

Once that has finished updating, restart the Nginx service.

`sudo systemctl restart nginx`{{execute}}
