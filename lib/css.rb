# CSS:
set :sass, {:style => :compact }

get '/css/style.css' do
  require 'sass'
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :'css/style'
end

get '/css/ie.css' do
  require 'sass'
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :'css/ie'
end