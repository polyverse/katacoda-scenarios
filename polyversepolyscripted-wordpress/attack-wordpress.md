Now.... let's attack this wordpress!

The simplest Code-Injection attack is to inject literally
this code into the running wordpress instance.

```
<?php
echo "You've been pwned!"
?>
```

Let's create a hack file:

`echo "<?php echo \"You've been pwned\"?>" >hack.php`
{{execute}}

You may modify the file any way you wish.

Once it is injection to your satisfaction, let's copy the file
into the wordpress container, simulating an injection..

`docker cp hack.php /var/www/html/`

Did it work? Let's find out on the next step!
