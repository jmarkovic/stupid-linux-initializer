stupid-linux-initializer
========================

Small script and *soon-to-be* service for automatic hands-free application installation


## What it does

This script adds a bunch of *ppa* repositories then installs applications. The goal is to have automatic installation of all apps that one wants on their Ubuntu system. Currently, this goal is not reached.

In its current form, this script is just a *proof of concept*. More applications have to be added and, eventually, script should be divided in groups (developers, media, etc).

Final form of this script will be a service hosted *somewhere* where people can easily select what to install and let the script do their job.

## How to use it

If you have **curl**, try the command below:

```shell
curl  https://raw.githubusercontent.com/jmarkovic/stupid-linux-initializer/master/initializer.sh | sh
```

If not, then use **wget** instead:

```shell
wget https://raw.githubusercontent.com/jmarkovic/stupid-linux-initializer/master/initializer.sh -O - | sh
```
