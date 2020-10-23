require 'require_all'
# require_all 'app'
# require_all 'lib'
require 'rubygems'
require 'open-uri'
require 'net/http'
require 'bundler'
#require 'json'
require 'pry'
Bundler.require

prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

require_all 'app'
require_all 'lib'