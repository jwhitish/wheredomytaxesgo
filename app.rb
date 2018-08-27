require "sinatra"
require "sinatra/activerecord"
require "stripe"
require "dotenv/load"
require_relative "lib/federal.rb"

enable :sessions
set :session_secret, "39hr85t6x1p2ksp49x023y", :expire_after => 86400 #24hrs in seconds
set :publishable_key, ENV['PUBLISHABLE_KEY']
set :secret_key, ENV['SECRET_KEY']

Stripe.api_key = settings.secret_key

before do #Stub out before prod!
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

get "/support" do
  erb :support
end

get "/charge" do
  erb :charge
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

post "/charge1" do
  # Amount in cents
  @amount = 100
  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge5" do
  # Amount in cents
  @amount = 500
  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge10" do
  # Amount in cents
  @amount = 1000
  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge15" do
  # Amount in cents
  @amount = 1500
  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

error Stripe::CardError do
  env['sinatra.error'].message
end
