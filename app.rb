require "sinatra"
#require "sinatra/reloader" if development?
require "sinatra/activerecord"
require_relative "models/model"
require_relative "lib/federal.rb"
require_relative "config/environments"

enable :sessions
set :session_secret, "39hr85t6x1p2ksp49x023y", :expire_after => 86400 #24hrs in seconds

before do
  puts '[Params]'
  p params
end

get "/" do
  if session[:id] == nil
    session[:id] = rand(100000)
  end

  erb :index
end

get "/results" do
  if session[:id] == nil
    redirect "/"
  else #if not nil
    #run methods
    if session[:filing_status] == "single"
      fed_tax_bracket_single(session[:income].to_i)
      total_tax_obligation_single(session[:income].to_i)
      breakdown(@total_tax)
    else #if joint filing
      fed_tax_bracket_joint(session[:income].to_i)
      total_tax_obligation_joint(session[:income].to_i)
      breakdown(@total_tax)
    end
  end

  erb :results, :locals => {:total_tax => @total_tax, :socsec => @socsec}
end

get "/about" do
  erb :about
end

get "/resources" do
  erb :resources
end

get "/tos" do
  erb :tos
end

get "/privacy" do
  erb :privacy
end

post "/" do
  session[:income] = params[:income]
  session[:state] = params[:state]
  session[:filing_status] = params[:filing_status]
  redirect "/results"
end

post "/results" do
  session.clear
  redirect "/"
end
