require "sinatra"

# Authentication:
use Rack::Auth::Basic do |username, password|
  [username, password] == ['user', 'pass']
end

# Include controllers/*
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

get '/' do
  erb "Hello world!"
end