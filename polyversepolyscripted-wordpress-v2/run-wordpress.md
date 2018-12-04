The terminal on your right should be starting a MySQL Docker Container
to connect our wordpress to. This is a fairly routine step.

When MySQL is ready, run either of the commands below to start
wordpress in Plain Mode/Stock Mode (WordPress as it exists
everywhere on the planet), or start it in Polyscripted Mode (A WordPress
that is unique to this specific instance on your right.)

## Plain/Stock WordPress

`docker run --rm -d --name wordpress -v $PWD/wordpress:/wordpress  --link mysql-host:mysql -p 80:80  polyverse/polyscripted-wordpress:11b6a9ee9a8422b414ed2c68f59bb3eee44bef63`{{execute}}

## Polyscripted WordPress

*NOTE: This version takes JUST a bit longer to start because it's generating a new
PHP on the fly, as well as transforming WordPress to it.*

`docker run --rm -d -e "MODE=polyscripted" --name wordpress -v $PWD/wordpress:/wordpress  --link mysql-host:mysql -p 80:80  polyverse/polyscripted-wordpress:11b6a9ee9a8422b414ed2c68f59bb3eee44bef63`{{execute}}

