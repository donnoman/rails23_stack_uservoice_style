# =============================================================================
# RECIPE INCLUDES
# =============================================================================

require 'rubygems'
require 'cap_recipes/tasks/ree'
require 'cap_recipes/tasks/redis'
require 'cap_recipes/tasks/memcache'
require 'cap_recipes/tasks/nginx_passenger'
require 'cap_recipes/tasks/mongodb'
require 'cap_recipes/tasks/thinking_sphinx'
require 'cap_recipes/tasks/postfix'
require 'cap_recipes/tasks/mysql'

# =============================================================================
# CAPISTRANO CONFIGURATION
# =============================================================================

set :application, "rails23_stack_uservoice_style"
set :repository,  "git@github.com:donnoman/rails23_stack_uservoice_style.git"
set :branch, "master"
set :deploy_to, "/var/apps/#{application}"
set :deploy_via, :remote_cache
set :scm, :git

ssh_options[:forward_agent] = true
default_run_options[:pty] = true


# =============================================================================
# SECRETS
# Roles moved to secrets.rb to preserve unique values for those who may check out
# the project. By keeping them there you don't need to modify this deploy.rb
# Copy the secrets.template.rb to secrets.rb and update with your own values.
# =============================================================================

require 'config/secrets'

# TODO: worker: rake resque:work QUEUE=*

namespace :deploy do
  desc "Provision the servers"
  task :provision do
    ree.install
    redis.install
    memcache.install
    nginx_passenger.install
    mongodb.install
    thinking_sphinx.install
    postfix.install
    mysql.install
  end
end

