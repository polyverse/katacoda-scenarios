Let's start a vulnerable Nginx 1.4.0 server. Run this command in our victim terminal:

`docker run -it --rm --name target -p 80:80 polyverse/vulnerable-nginx-1.4.0:poly-dev`{{execute "Victim Nginx"}}

You can see the default Nginx index page at this link:

[Nginx](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/)

NOTE: Source code for this nginx docker image is available here: https://github.com/polyverse/vuln-nginx-1.4.0. You can study what does or does not go into this, and be sure it is not synthetic. For the adventurous, you may build that image, and run that instead of the image we've used here.
