require 'sinatra'

set :bind, '0.0.0.0'
set :port, 4567

get '/' do
  erb :index
end

get '/profil' do
  erb :profil
end

get '/akademik' do
  erb :akademik
end

get '/berita' do
  erb :berita
end

get '/kontak' do
  erb :kontak
end