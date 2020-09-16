---
layout: page
title: Setup
permalink: /setup/
---

Here you can find the steps to set up your computer for FCB.

## Unix operating system

Throughout FCB we will work on the Unix command-line. Depending on the
operating system you have in your computer, you may need to follow different
steps.

### Unix

If you have a computer running some flavor of the Unix operating system, such
as [Ubuntu](https://ubuntu.com), [RedHat](https://redhat.com) or
[CentOS](https://www.centos.org), you don't need to do anything because you're
alredy have direct access to the Unix command-line through the terminal window.

### Windows

If you have a computer running the Windows operating system, then you can install
[Cygwin](https://www.cygwin.com), which will provide you a Unix command-line within
Windows.

### MacOS

If you have an [Apple](https://apple.com) computer running the MacOS operating
system, then you already have a Unix command-line available through the
[Terminal app](https://www.dummies.com/computers/macs/mac-operating-systems/unix-terminal-application-on-your-macbook). Nonetheless, to have fully-fledged Unix command-line
tools in MacOS, you also need to install the
[Xcode Command-Line Tools](https://developer.apple.com/xcode/features) by opening
the Terminal app and typing the following instruction:

```
$ xcode-select --install
```

You should *not* type the dollar sign above (`$`) because it is just a convention,
calld the [command prompt](https://en.wikipedia.org/wiki/Command-line_interface#Command_prompt) to indicate that you should write the instruction in the Terminal app. Do not
misinterpret this as installing the _whole_ of Xcode, which is the MacOS suite of
developer tools. **Do not** attempt to install the _whole_ of Xcode.
