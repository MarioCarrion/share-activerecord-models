require 'rails/all'
require 'active_support/core_ext/string/indent'
require 'scenic'

require_relative 'config/application'

config = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection(config[Rails.env])

Scenic.load
Rails.application.load_tasks
