Polyscripted mode does not allow new plugins or new code to be adapted.
This is an intentional side effect of preventing code injection.

However, by simply switching WordPress back to plain/stock mode, you
can make changes easily.

In order to make the switch, shut down the currently running instance then
relaunch in either mode you prefer and access the WordPress Endpoint.
You can even try to re-inject the hack as well.

All the commands you require are listed below and can be run in
any order you wish.

## Relaunch in Plain/Stock WordPress mode

`docker stop wordpress; docker run --rm -d --name wordpress -v $PWD/wordpress:/wordpress  --link mysql-host:mysql -p 80:80  polyverse/polyscripted-wordpress:b1805560d812c84e441b0ca0326c66bf5522c5ad`{{execute}}

## Relaunch in Polyscripted WordPress mode

`docker stop wordpress; docker run --rm -d -e "MODE=polyscripted" --name wordpress -v $PWD/wordpress:/wordpress  --link mysql-host:mysql -p 80:80  polyverse/polyscripted-wordpress:b1805560d812c84e441b0ca0326c66bf5522c5ad`{{execute}}

## Inject code

`docker cp hack.php wordpress:/var/www/html/`{{execute}}

## Access WordPress

[WordPress on Port 80](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/)

## Access Injected File

[wordpresshost/hack.php?arg=1; echo phpinfo();](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/hack.php?arg=1%3B%20echo%20phpinfo%28%29%3B)

