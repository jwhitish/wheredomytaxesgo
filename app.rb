require "sinatra"
require "sinatra/reloader" if development?
#require 'dotenv/load'

enable :sessions
set :session_secret, "39hr85t6x1p2ksp49x023y", :expire_after => 86400 #24hrs in seconds

# before do
#   puts '[Params]'
#   p params
# end

get "/" do
  erb :index
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

get "/mortgage_calc" do
  if params['button'] == 'Submit'
    dnpmt = params['dnpmt'].to_i
    principle = params['prin'].to_i
    rate = params['rate'].to_i
    period = params['period'].to_i
    $payment = mortgage_calc(dnpmt, principle, rate, period)
  else
    $payment = ""
  end
  erb :mortgage_calc, :locals => {:payment => $payment}
end
