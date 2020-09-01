We've had [Zerotect](https://github.com/polyverse/zerotect) running in the background attempting to detect just this class of attack.

It is analyzing events in real time and sending them to a hosted monitoring service. They are graphed here:

[Live attack detection dashboard](https://[[HOST_SUBDOMAIN]]-8888-[[KATACODA_HOST]].environments.katacoda.com/)

To view the raw logs that Zerotect emitted, and look for detected attacks in its log file:

`tail -f /var/log/zerotect.log | grep -i "probe"`{{execute T4}}

You can see that there is an "InstructionPointerProbe". It means that there were a few consequtive faults where the instruction pointer (where the program is running) was within a few bytes of each other. We've grepped for the most important event, but you should feel free to open up/tail the log file and look at the rich event stream that makes this attack unmistakable with no prior knowledge.

No legitimate and useful program crashes at consequtive bytes like that and this is a very strong detection of an attack taking place. We are working on adding more heuristic detections in Zerotect, and we love pull requests.

Get in touch with us if you'd like to see the mitigations in action.
