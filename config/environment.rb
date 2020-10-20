require 'rubygems'
require 'open-uri'
require 'net/http'
require 'bundler'
require 'json'
require 'pry'
Bundler.require


ActiveRecord::Base.logger = nil
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
