Let's quickly install Ropoly. It's a single binary (though
it DOES rely on libc so you have to download a different version for
MUSL and GLIBC). You can find the latest release on Github: https://github.com/polyverse/ropoly/releases

Let's download Ropoly and add it to our path, and run it in server mode:
```
mkdir ~/bin
wget -O ~/bin/ropoly https://github.com/polyverse/ropoly/releases/download/0.0.6/ropoly-libc-x86_64
chmod a+x ~/bin/ropoly
export PATH=$PATH:~/bin
ropoly server
```{{execute T1}}
