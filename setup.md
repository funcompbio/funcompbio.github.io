---
layout: page
title: Setup
permalink: /setup/
---

Here you can find the steps to set up your computer for FCB. Depending
on the operating system of your computer, you may have to follow different
steps. Here, you will find those steps separately for Unix, Windows and macOS
when necessary. It is recommended that you install the software tools in the
order given here.

If you have a tablet device, then it is probably running either Android
(Samsung Galaxy Tab, etc.) or iOS (iPad). You will also find below instructions
for such devices but at some point it may become easier for you to work
with a computer. In any case, it is recommended that you use some external
keyboard with your tablet.

## Unix shell

### Unix

If you have a computer running some flavor of the Unix operating system, such
as [Ubuntu](https://ubuntu.com), [RedHat](https://redhat.com) or
[CentOS](https://www.centos.org), you don't need to do anything because you're
alredy have direct access to the Unix shell through the terminal window.

### Windows

If you have a computer running the Windows operating system, then you can
install [GitForWindows](https://gitforwindows.org/), which will provide you a
Unix shell within Windows through its tool Git BASH.

### macOS

If you have an [Apple](https://apple.com) computer running the macOS operating
system, then you already have a Unix shell available through the
[Terminal app](https://www.dummies.com/computers/macs/mac-operating-systems/unix-terminal-application-on-your-macbook). However, you still need two more software components
to facilitate working and installing additional software from the command line:

  1. [Xcode Command-Line Tools (CLT)](https://developer.apple.com/xcode/features).
  Open the Terminal app and type the following instruction:
  ```
  $ xcode-select --install
  ```
  you should *not* type the dollar sign above (`$`) because it is just a convention,
  called the
  [command prompt](https://en.wikipedia.org/wiki/command-line_interface#command_prompt)
  to indicate that you should write the instruction in the terminal app. Do not
  misinterpret this step as installing the _whole_ of Xcode, which is the MacOS suite of
  developer tools and in any case **do not** attempt to install the _whole_ of Xcode,
  because we do not need it for this course.

  2. [Homebrew](https://brew.sh). Type the following instruction in the terminal window:
     ```
     $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
     ```
     Pay attention to the fact the installation process may ask you to confirm to
     proceed by pressing the `Enter` key and eventually type your user password as well.
     Once the installation has finished, you can check whether it has been successful by
     typing the following command:
     ```
     $ brew doctor
     Your system is ready to brew.
     ```
     If you get the previous output message, you are ready to use Homebrew.

### Android

If you have a tablet running Android, then you already have a Unix system
but you still need a terminal emulator app. There are a few options but
probably the best one for our goals here is
[Termux](https://play.google.com/store/apps/details?id=com.termux). You
can find further details on how to install and use Termux in Android
in the following
[link](https://www.techrepublic.com/article/how-to-get-a-linux-terminal-on-android).

## Git version-control system

### Unix

If you have a computer running some flavor of the Unix operating system, such
as [Ubuntu](https://ubuntu.com), [RedHat](https://redhat.com) or
[CentOS](https://www.centos.org), probably the git version-control system is
already installed. Check it out by opening a terminal window and typing the
following in the shell:

```
$ which git
```

You should *not* type the dollar sign above (`$`) because it is just a convention,
calld the [command prompt](https://en.wikipedia.org/wiki/command-line_interface#command_prompt) to indicate that you should write the instruction in the terminal app.

If typing the previous instruction gives no answer, then the git version-control
software is not installed in your Unix system. To install it go to the
following [page](https://git-scm.com/download/linux) and follow the instructions,
according to the Unix distribution you have in your computer.

### Windows

If you have a computer running the Windows operating system, then you can
install [GitForWindows](https://gitforwindows.org/), which will provide you
the git version-control system. If you already installed it before to have
the Unix shell, then you don't need to do anything else.

### macOS

If you successfully installed the X-code CLT, then you should already have Git
install in your macOS system. You can check that out by typing in the shell
of the terminal window:

```
$ which git
/usr/bin/git
```

If you get an error, then go to the previous section and install the
Xcode CLT.

### Android

If you have a tablet running Android, once you have installed the
Termux app (see previous section), open the terminal window and
type:

```
$ apt update
$ apt upgrade
```
If both commands execute successfully, then you can type the final
command that will install Git and other component called `openssh`, which is
also necessary for Git.

```
apt install git openssh
```
Once this installation is finished, you should type:

```
$ termux-setup-storage
```
This command will probably cause Android to ask you to allow
the app to access storage. You should grant that access. You
can find more details on the installation of Git in an Android
device in this
[link](https://www.techrepublic.com/article/how-to-install-git-on-android).

## Text editor

We need a text editor to edit scripts and programs. The
[Microsoft Notepad](https://en.wikipedia.org/wiki/Microsoft_Notepad) is a text editor but
[Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word) or
[Apple Pages](https://en.wikipedia.org/wiki/Pages_%28word_processor%29) are not. For
scripting and programming is always best to use an editor with
[syntax highlighting](https://en.wikipedia.org/wiki/Syntax_highlighting) (Notepad has
no syntax highlighting). The specific editor you may want to use depends on what
editor you feel most comfortable working with. The available options can be splitted
into two types of editors: classical and modern ones. Classical text editors can work
in text mode only, i.e., you can use them remotely through a text connection, but
modern editors are easier to use for newbies:

* Classical text editors (available in nearly every Unix system):
  * [nano](https://www.nano-editor.org)
  * [emacs](https://www.gnu.org/software/emacs)
  * [vim](https://www.vim.org)

* Modern text editors with a graphical interface:
  * [sublime](https://www.sublimetext.com)
  * [atom](https://atom.io)

If you want to use a classical editor in a **macOS system**, check out first whether
is already available in the shell via `which nameofeditor` and if not, use
Homebrew to install it via `brew install nameofeditor`, where you should
**replace** `nameofeditor` **by the name of the editor application**.


## Python and Jupyter Notebook

There are two major versions of Python, 2.x and 3.x, and they are not
[compatible](https://en.wikipedia.org/wiki/History_of_Python). Because Python 2.x
is no longer maintained and progressively more code is being developed for Python 3.x,
it is recommended that you install Python 3.x in your computer.

### Unix

If you have a computer running some flavor of the Unix operating system, such
as [Ubuntu](https://ubuntu.com), [RedHat](https://redhat.com) or
[CentOS](https://www.centos.org), probably Python 3.x is already installed.
Check it out by opening a terminal window and typing the following in the shell:

```
$ which python3
```

You should *not* type the dollar sign above (`$`) because it is just a convention,
calld the [command prompt](https://en.wikipedia.org/wiki/command-line_interface#command_prompt) to indicate that you should write the instruction in the terminal app.

If typing the previous instruction gives no answer, then the Python 3.x
software is not installed in your Unix system. The specific package manager software
that you can use to install Python 3.x depends on your specific Unix distribution.
You can find instructions for different distributions in the following
[link](https://realpython.com/installing-python/#how-to-install-python-on-linux).

Once Python 3.x is installed, you can install Jupyter Notebook by typing:

```
$ pip install jupyter
```

### Windows

If you have a computer running the Windows operating system, then you should
follow these steps:

  1. Go to the [Python downloads for windows](https://www.python.org/downloads/windows)
  page, follow the link for the _Latest Python 3 Release_ and in the next page scroll
  down until you find the link to download the _latest stable Windows x86-64 executable_.
  If your system has a 32-bit processor, then you should look for the link of the
  32-bit installer. Follow that link and once the download has finished, execute the
  installer program you have just downloaded.
  2. During the installation, select the option _Add Python to PATH_ and use all
  the other default options.
  3. To check whether the Python 3.x installation was successful open the Git Bash
  terminal window and type:
  ```
  python3 --version
  ``` 

### macOS

If you have an [Apple](https://apple.com) computer running the macOS operating
system, then you have by default a system-wide installation of Python 2.x. You
can check that by opening the
[Terminal app](https://www.dummies.com/computers/macs/mac-operating-systems/unix-terminal-application-on-your-macbook) and typing the following:

```
$ which python
/usr/bin/python
$ python --version
Python 2.7.16
```

The lines without an starting dollar sign (`$`) indicate the output you should
be seeing in your terminal window. It may happen that the last line gives a 2.x.y
version but with a different minor (`x`) or revision (`y`) version numbers than the
ones shown here.

Installing and maintaining a Python installation in macOS may become complicated,
see this [xkcd joke](https://xkcd.com/1987). For
this reason, it is recommended to use a package manager software such as Homebrew
to install Python 3.x and Jupyter Notebook, through the following two steps:

  1. Install Python3 using Homebrew as follows:
     ```
     $ brew install python3
     ```
     You can check whether the installation has been successful by typing
     ```
     $ which python3
     /usr/local/bin/python3
     $ python3 --version
     Python 3.8.5
     ```
     Again, it may happen that the last line gives a 3.x.y version but with a
     different minor (`x`) or revision (`y`) version numbers than the ones shown here.
  4. Install Jupyter Notebook using Homebrew as follows:
     ```
     brew install jupyterlab
     ```
     You can check whether the installation has been successful by typing
     ```
     $ which jupyter
     /usr/local/bin/jupyter
     ```

## R and RStudio

To install R go to [https://cran.r-project.org](https://cran.r-project.org)
and follow the corresponding download link according to your operating system
(Linux, Windows or macOS) at the top of the page.

To install RStudio go to
[https://rstudio.com/products/rstudio/download](https://rstudio.com/products/rstudio/download)
and select the download link under _RStudio Desktop (Free)_.
