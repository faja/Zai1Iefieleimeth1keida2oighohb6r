---

[github.com/iovisor/bcc](https://github.com/iovisor/bcc)

BCC repo structure:

IMAGE GOES HERE

![](../images/bpf_003.jpg)

BCC requires some kernel `CONFIG_` options to be set, see [INSTALL.md](https://github.com/iovisor/bcc/blob/master/INSTALL.md) for all the details.

As a rule of thumb
  - `bcc` tools are heavier, includes a lot of options, etc...
  - `bpftrace` tools are lighter, often oneliners, etc...

---

BCC performance tools:

IMAGE GOES HERE

![](../images/bpf_004.jpg)

### multi-purpose tools
- [funccount](../../../COMMANDS/FUNCCOUNT/index.md) - counts events, especially function calls, and can aswer questions such as:
    - is the kernel- or user-level function being called?
    - what is the rate of this function call, per second?
