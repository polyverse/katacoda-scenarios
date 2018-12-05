Now.... let's attack this wordpress!

Let's use a well-understood vulnerability from [OWASP](https://www.owasp.org/index.php/Code_Injection).

```
<?php
$myvar = "varname";
$x = $_GET['arg'];
eval("\$myvar = \$x;");
?>
```

First, we create a vulnerable file:

`echo "<?php \$myvar = \"varname\"; \$x = \$_GET['arg']; eval(\"\\\$myvar = \$x;\"); ?>" >hack.php`{{execute}}

Now let's inject it as if this were a bug in the original codebase.

`docker cp hack.php wordpress:/var/www/html/`{{execute}}

Does it work? Let's find out on the next step!
