While this has been going on, we've been running a little open source program called [Zerotect](https://github.com/polyverse/zerotect) that knows how to detect exactly this category of exploits.

Let's see what it tells us. We can begin by tailing logs:

`cat /var/log/zerotect.log`{{execute T4}}

That's a LOT of noise! An attack of this sort, may look like a lot of arbitrary and unrelated segmentation faults or panics. But make no mistake, there's a pattern in these, and Zerotect knows how to find it.

A number of Polyverse dynamic mitigations make this attack even more noisy (in addition to preventing it, of course.)

Get in touch with us if you'd like to see the mitigations in action.
