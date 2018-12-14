Now.... Let's attack your WordPress site!

To start the hack, we will use a well-known vulnerability from [OWASP](https://www.owasp.org/index.php/Code_Injection):

```
<?php
$myvar = "varname";
$x = $_GET['arg'];
eval("\$myvar = \$x;");
?>
```

First, we create a vulnerable file:

`echo "<?php \$myvar = \"varname\"; \$x = \$_GET['arg']; eval(\"\\\$myvar = \$x;\"); ?>" >hack.php`{{execute}}

Next, let's inject the file as if it was a bug in the original codebase.

`docker cp hack.php wordpress:/var/www/html/`{{execute}}

Did it work? Press Continue to find out!
