# abl-zmq

A (failed) native [ØMQ][1] binding for OpenEdge ABL.

## Status

I've stopped working on this as I think it's non-viable. I get
segfaults shortly after calling `zmq_init` (although I do get a
valid pointer back immediately after the call).  I think the
issue is the lack of threading support in ABL.

The only viable way to use ZeroMQ in OpenEdge ABL is probably
by using the existing .NET binding through the CLR bridge
(here's some [example code][3] written by Mike Fetchner).
Unfortunately, it's not a Unix-friendly solution as [Mono][4]
isn't supported by ABL.

## License

The code I write is licensed under the MIT license. The vendored
binaries are built from the ØMQ project's official [LGPLv3+ source][2].

[1]: http://www.zeromq.org/
[2]: http://www.zeromq.org/intro:get-the-software
[3]: http://communities.progress.com/pcom/message/136057#135953
[4]: http://www.mono-project.com/