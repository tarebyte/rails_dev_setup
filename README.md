## Rails Starter Kit

This is a starter kit for setting up a virtual development environment for Capstory's Code for a Cause event. The goal of this repository is to make it easy for everyone to start with the same development environment.

### Dependencies

All three of the dependencies listed below should be downloaded and installed before moving further. Each one of the programs shown below have installers that should make the process easier to handler. There are certainly additional package managers through which you can download each one of the dependencies. If you feel confident that you know your way around a given package manager, feel free to use one of them.

**Installers**

+ [Git](http://git-scm.com/downloads)
+ [Vagrant](https://www.vagrantup.com/downloads.html)
+ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)


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
~/CodeForACause $ cd rails_dev_setup
~/CodeForACause/rails_dev_setup $ ls -la
```

Next, you will start `Vagrant` with the following command:

```
~/CodeForACause/rails_dev_setup $ vagrant up
```

This command will initiate the process of creating a virtual machine. After `Vagrant` installs and initializes a virtual instance of `Ubuntu 14.04 - Trusty Tahr`, it will then run the following shell commands automatically. **You do not need to do anything**.

*If `Vagrant` commands hang on Windows, try closing Git Bash and VirtualBox and then running both as Administrator.*

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

### Accessing the VM

You can `ssh` into the VM by running the following command:

```
~/CodeForACause/rails_dev_setup $ vagrant ssh
```

You are now connected to a virtual instance of `Ubuntu 14.04` with `Ruby 2.2.1`, `Ruby on Rails` and `NodeJS`, which provides a JavaScript runtime. If you enter the following commands you should see the same files and directories as those that are in your `CodeForACause/rails_dev_setup` directory on your local machine. This is the shared folder.

```
vagrant@rails-dev ~$ cd /vagrant
vagrant@rails-dev /vagrant $ ls -la
```

The shared folder `vagrant` is the connection point between your local machine and your new virtual machine. You can make changes to the files in `rails_dev_setup` and those changes will be reflected in the `vagrant` directory on the virtual machine.

Once you are finished setting the VM up and have verified that you can successfully `ssh` into the VM, you can shut it down so that it doesn't take up too many resources:

```
vagrant@rails-dev: ~$ exit
```

You will now be back on your local machine. You can stop the VM from running in the background:

```
~/CodeForACause/rails_dev_setup $ vagrant halt
```

If you want to restart the VM, you simply enter the following command:

```
~/CodeForACause/rails_dev_setup $ vagrant up
```

In order to see what VM's you have running on your system, you can enter the following `VirtualBox` command:

```
~$ vboxmanage list runningvms
```

### Git Flow

Fork this repository (`code4acause/rails_dev_setup`) to your GitHub account, and add the fork as a Git remote:

    git remote add fork https://github.com/{{username}}/rails_dev_setup.git

Do your work on a feature branch:

    git checkout -b cool-feature # Always work on a branch

When you're ready, commit your changes:

    git status # Everything look good?
    git add --all . # Add it
    git commit -m 'I built a thing!' # Commit
    git push --set-upstream fork cool-feature # Send the branch to your fork

On GitHub, go to your fork (`{{username}}/rails_dev_setup`), and send a pull request to this repository (`code4acause/rails_dev_setup`).

Maybe there's more work that needs to be done:

    git status # Everything look good?
    git add --all . # Add it
    git commit -m 'Oops, it had a bug' # Commit
    git push # Add this commit to the pull request

Uh oh, merge conflict :cry:

    git checkout master # Switch back to master
    git pull -r origin master # Get the latest changes
    git checkout cool-feature # Go back to your feature
    git rebase master # Include the new changes
    # Follow the instructions here. If you get lost, git status
    git push -f # Good to go!

Brad merges your pull request! :tada: :fireworks:

    git checkout master # Go back to master
    git branch -D cool-feature # It's merged, we don't need this anymore
    git pull -r origin master # Get the latest changes


---

If you have any questions, concerns or issues, please email me [brad@capstory.me](mailto:brad@capstory.me). Or, show up a little early on Sunday, 12 April to the event. We will correct any issues at that time.

