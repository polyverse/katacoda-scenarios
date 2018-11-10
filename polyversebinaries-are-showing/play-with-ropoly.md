Now that Ropoly server is running, let's see a few things it can
do in another terminal!

We can CURL the API to see what it offers:

`curl http://localhost:8008/`{{execute T2}}

That's exciting. So what's the big deal?

### Understand the memory your processes

The primary purpose of ropoly is to understand how ROP gadgets
move, by how much, and in what way for running processes along
with all mapped executable regions in memory.

You can list all the processes running on the system, by querying
the PIDs endpoint:

`curl http://localhost:8008/api/v1/pids`{{execute T2}}

If you want to find the ROP gadgets in a certain propcess, you can now
query a particular pid and see what libraries are linked into it.

`curl http://localhost:8008/api/v1/pids/1`{{execute T2}}


That's cool! What else can we do? Let's find all the ROP gadgets in
process 1.

`curl http://localhost:8008/api/v1/pids/1?query=gadgets`{{execute T2}}

This will take a minute, but you'll actually see ALL gadgets in PID 1
and their locations. To get a compact view of all gadgets, you can also
generate a fingerprint:

`curl http://localhost:8008/api/v1/pids/1?query=fingerprint`{{execute T2}}

### Understand your binaries

The exact same structure works for the filesystem too. Let's say
you wanted to know where all the ROP gadgets in the default
Ubuntu C Library are:

`curl http://localhost:8008/api/v1/files/lib/x86_64-linux-gnu/libc-2.23.so?query=gadgets`{{execute T2}}

My my! Your binaries are showing, aren't they? No matter what Ubuntu
you're on, this is the stock libc, and in seconds we know the relative
locations of all gadgets.

### Play with Ropoly

This was a very high level overview of Ropoly. Please play more with it. You can
check out all the features it supports on the git repo: github.com/polyverse/ropoly

Analyse your processes, analyze how effectively ASLR is moving gadgets, and
understand that the hackers can see your binaries.

They already know this. Ropoly brings you the tools they already have.

Hackers rely on knowing our binaries, and they're showing...