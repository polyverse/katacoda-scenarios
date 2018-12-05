Now that our vulnerability is injected, at a well-known location, let's craft
a modified version of the OWASP example URL:
[wordpresshost/hack.php?arg=1; echo phpinfo();](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/hack.php?arg=1%3B%20echo%20phpinfo%28%29%3B)

If you saw PHP Info, you just extracted private server information.

If you had a syntax error, it just might be the best syntax
error you've ever had! Not only did you successfully stop a previously
unknown, unseen vulnerability, but you prevented it from being exploited
on the very first attempt, and but you also detected it while doing so!