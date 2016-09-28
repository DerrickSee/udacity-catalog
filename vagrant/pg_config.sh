apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-pip

# Install Git
# -----------
apt-get install -y git-core

# Install Node js
# ---------------
apt-get install -y python-software-properties python g++ make
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs

# Upgrade NPM
# -----------
npm update -g npm

# Install Bower
# -------------
npm install -g bower

pip install flask
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install redis
pip install passlib
pip install itsdangerous
pip install flask-httpauth
pip install flask_sqlalchemy



su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
su vagrant -c 'createdb catalog'
# su vagrant -c 'psql forum -f /vagrant/forum/forum.sql'

vagrantTip="[35m[1mThe shared directory is located at /vagrant\nTo access your shared files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install
