require "sinatra"
require "sinatra/reloader" if development?
#require 'dotenv/load'

enable :sessions
set :session_secret, "39hr85t6x1p2ksp49x023y", :expire_after => 86400 #24hrs in seconds

before do
  puts '[Params]'
  p params
end

get "/" do
  erb :index
end

get "/results" do
  erb :results
end

get "/about" do
  erb :about
end

get "/tos" do
  erb :tos
end

get "/privacy" do
  erb :privacy
end

post "/" do
  redirect "/results"
end
