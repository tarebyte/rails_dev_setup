apt-add-repository ppa:brightbox/ruby-ng
add-apt-repository ppa:chris-lea/node.js
apt-get -y update

apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libxml2

apt-get -y install ruby2.2 ruby2.2-dev

apt-get -y install nodejs

gem install bundler
gem install rails -v 4.2.0

