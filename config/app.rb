require 'rubygems'
require 'bundler'
Bundler.require

DB = Sequel.connect("postgres://#{ENV['USER']}:@localhost/fifa_team_builder")
$LOAD_PATH << File.expand_path('../../lib', __FILE__)

