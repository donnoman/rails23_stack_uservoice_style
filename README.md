## Rails2.3 Stack UserVoice Style
This is a sample application designed to loosely replicate what I know about the UserVoice Rails Stack

This is primarily an excercise in developing flexible capistrano scripts to support such a stack.

See the config/deploy.rb file.

### Servers
#### Operating Environment Preferences
* Ubuntu
* Ruby Enterprise Edition
* Postfix

#### web
* Nginx (Linux-HA failover)

#### app
* Nginx/Passenger
* Resque
* Sphinx

#### db
* Mysql
* MongoDB
* Redis
* Memcache

