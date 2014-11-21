stupid-linux-initializer
========================

Small script used to setup applications on Ubuntu based distros 


## What it does

This script adds a bunch of *ppa* repositories then installs applications. Some stuff has no repositories, so these specific applications are downloaded and installed manually. The goal is to have automatic installation of all apps that one wants on their Ubuntu system. Currently, this goal is not reached.

In its current form, this script is just a *proof of concept*. More applications have to be added and, eventually, script should be divided in groups (developers, media, etc).

## Why

I was bored one afternoon and decided to write this. I am in no way good or even familiar with scripting in Linux and I thought this might be a cool way to start. I also frequently use Ubuntu distros for work and this can be a good way to install everything I need to use.

## How to use it

Just copy and paste these three commands one by one.

```shell
wget https://raw.githubusercontent.com/jmarkovic/stupid-linux-initializer/master/initializer.sh
chmod +x initializer.sh
./initializer.sh
```

## Currently included

ppa repositories:

* **Oracle Java** - ppa:webupd8team/java
* **Ubuntu Wine** - ppa:ubuntu-wine/ppa
* **Google Chrome** - [Visit here](http://www.ubuntuupdates.org/ppa/google_chrome)
* **Git** - ppa:git-core/ppa
* **Mercurial** - ppa:mercurial-ppa/releases
* **TortoiseHG** - ppa:tortoisehg-ppa/releases

applications

* Oracle Java 6, Oracle Java 7 and Oracle Java 8
* Wine1.7
* PlayOnLinux
* Google-Chrome-Stable
* Git
* GitG
* Mercurial
* TortoiseHG
* Synaptic
* VLC
* Main Menu (alacarte)
* Android SDK Linux 64bit
* Android Studio Linux

Will add

* Sublime Text 3
* LibreOffice (already included in most distros)
* Tweak Tools (depending on DE)
* *anything suggested*
