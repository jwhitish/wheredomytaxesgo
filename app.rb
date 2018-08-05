require "sinatra"
require "sinatra/reloader" if development?
#require 'dotenv/load'

enable :sessions
set :session_secret, "39hr856x1p2", :expire_after => 86400 #24hrs in seconds

before do
  puts '[Params]'
  p params
end

get "/" do
  erb :index, :layout => :layout_index
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

post "/hangman" do
  if params["button"] == "New Game"
    session.clear
  else
    session[:guess] = params[:text]
    session[:message] = session[:guess]
  end
  redirect "/hangman"
end
