Now that our vulnerability is injected, at a well-known location, let's craft
a modified version of the OWASP example URL:
[wordpresshost/hack.php?arg=1; echo phpinfo();](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/hack.php?arg=1%3B%20echo%20phpinfo%28%29%3B)

Did you see PHP Info? You just extracted private server information.

Did you experience a syntax error? It just might be the best syntax
error you've ever had! Not only did you successfully stop a previously
unknown, unseen vulnerability, but you prevented it from being exploited 
on the very first attempt, and you detected the hack at the same time!
