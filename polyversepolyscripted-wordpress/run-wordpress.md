The terminal on your right should be starting a MySQL Docker Container
to connect our wordpress to. This is a fairly routine step.

When MySQL is ready, run either of the commands below to start
wordpress in Plain Mode/Stock Mode (WordPress as it exists
everywhere on the planet), or start it in Polyscripted Mode (A WordPress
that is unique to this specific instance on your right.)

## Plain/Stock WordPress

`docker run --name wp-cont --link mysql-cont:mysql -p 80:80 -d polyverse/demo-wp-standard`{{execute}}

## Polyscripted WordPress

*NOTE: This version takes JUST a bit longer to start because it's generating a new
PHP on the fly, as well as transforming WordPress to it.*

`docker run -e "MODE=poly" --name wp-cont --link mysql-cont:mysql -p 80:80 -d polyverse/ps-wp-image`{{execute}}

