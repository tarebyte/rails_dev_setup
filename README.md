## Rails Starter Kit

This is a starter kit for setting up a virtual development environment for Capstory's Code for a Cause event. The goal of this repository is to make it easy for everyone to start with the same development environment. 

### Dependencies

All three of the dependencies listed below should be downloaded and installed before moving further. Each one of the programs shown below have installers that should make the process easier to handler. There are certainly additional package managers through which you can download each one of the dependencies. If you feel confident that you know your way around a given package manager, feel free to use one of them. 

**Installers**

[Git](http://git-scm.com/downloads)
[Vagrant](https://www.vagrantup.com/downloads.html)
[VirtualBox](https://www.virtualbox.org/wiki/Downloads)


### Setup Instructions

After having installed all of the dependencies listed above, follow the next steps. 

```
**Windows Note**

All of these steps will best be done in the Git Bash shell that should have been installed on your machine with the Git installer.
```

Create a new Code for a Cause directory and change into that directory:

```
~$ mkdir CodeForACause
~$ cd CodeForACause
```

Clone this `git` repository. It will be cloned into a directory named `rails_dev_setup`:

```
~/CodeForACause $ git clone https://github.com/code4acause/rails_dev_setup
```

Take a look at the directory. You should see the same files and directories as you see in this `Github` repository:

```
~/CodeForACause $ ls -la
```

Next, you will start `Vagrant` with the following command:

```
~/CodeForACause $ vagrant up
```

This command will initiate the process of creating a virtual machine. After `Vagrant` installs and initializes a virtual instance of `Ubuntu 14.04 - Trusty Tahr`, it will then run the following shell commands automatically. **You do not need to do anything**.

#### This will take 5 - 10 mins

```
apt-add-repository ppa:brightbox/ruby-ng
add-apt-repository ppa:chris-lea/node.js
apt-get -y update

apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libxml2

apt-get -y install ruby2.2 ruby2.2-dev

apt-get -y install nodejs

gem install bundler
gem install rails -v 4.2.0
```


If you have any questions, concerns or issues, please email me [brad@capstory.me](mailto:brad@capstory.me). Or, show up a little early on Sunday, 12 April to the event. We will correct any issues at that time.

