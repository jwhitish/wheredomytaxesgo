require "sinatra"
require "sinatra/activerecord"
require "stripe"
require "dotenv/load"
require_relative "lib/federal.rb"
require_relative "lib/state.rb"

set :database_file, 'config/database.yml'

enable :sessions
set :session_secret, "39hr85t6x1p2ksp49x023y", :expire_after => 86400 #24hrs in seconds
set :publishable_key, ENV['PUBLISHABLE_KEY']
set :secret_key, ENV['SECRET_KEY']

Stripe.api_key = settings.secret_key

# after do #Stub out before prod!
#   puts '[Params]'
#   p params
# end

############ Begin Db Classes ############

class Submitteds < ActiveRecord::Base
end

############ Begin Routes ############

get "/" do
  if session[:id] == nil
    session[:id] = rand(1000000)
  end

  erb :index
end

get "/results" do
  @income = session[:income]

  if session[:filing_status] == "single"
    fed_tax_bracket_single(@income.to_i)
    total_tax_obligation_single(@income.to_i)
    breakdown(@total_tax)
  else #if joint filing
    fed_tax_bracket_joint(@income.to_i)
    total_tax_obligation_joint(@income.to_i)
    breakdown(@total_tax)
  end
  state_max_tax(@income.to_i, session[:state])

  erb :results, :locals => {:total_tax => @total_tax, :socsec => @socsec, :state => @state}
end

get "/explore" do
  @submits = Submitteds.all
  @total = @submits.count
  @summary = @submits.all.group(:state).count
  @num_sorted = @summary.sort_by { |key, value| value }.reverse.to_h
  @alpha_sorted = @summary.sort_by { |key, value| key || "N/A" }.to_h

  erb :explore, :locals => {:submits => @submits, :total => @total, :summary => @summary, :num_sorted => @num_sorted, :alpha_sorted => @alpha_sorted}, :layout => :layout_sidebar
end

get "/admin" do
  if params[:key] == "explore"
    @submits = Submitteds.all
    @total = @submits.count
    @summary = @submits.all.group(:state).count
    @num_sorted = @summary.sort_by { |key, value| value }.reverse.to_h
    @alpha_sorted = @summary.sort_by { |key, value| key || "N/A" }.to_h
  else
    redirect '/'
  end

  erb :explore_admin, :locals => {:submits => @submits, :total => @total, :summary => @summary, :num_sorted => @num_sorted, :alpha_sorted => @alpha_sorted}
end

get "/vote" do
  erb :vote
end

get "/about" do
  erb :about, :layout => :layout_sidebar
end

get "/resources" do
  erb :resources, :layout => :layout_sidebar
end

get "/tos" do
  erb :tos
end

get "/privacy" do
  erb :privacy
end

get "/support" do
  erb :support, :layout => :layout_sidebar
end

get "/charge" do
  erb :charge
end

get "/error" do
  erb :error
end

get "/press" do
  if params[:key] == "press"

  else
    redirect '/'
  end
  erb :press
end

not_found do
  status 404
  erb :error
end

post "/" do
  session[:income] = params[:income].gsub(/[\s,]/ ,"").to_i.round
  session[:state] = params[:state]
  session[:filing_status] = params[:filing_status]
  #save to db
  Submitteds.create(:income => params[:income].gsub(/[\s,]/ ,"").to_i.round, :state => params[:state], :filing_status => params[:filing_status])
  #redirect to results page
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
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge5" do
  # Amount in cents
  @amount = 500
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge10" do
  # Amount in cents
  @amount = 1000
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge15" do
  # Amount in cents
  @amount = 1500
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge20" do
  # Amount in cents
  @amount = 2000
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge30" do
  # Amount in cents
  @amount = 3000
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge40" do
  # Amount in cents
  @amount = 4000
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

post "/charge50" do
  # Amount in cents
  @amount = 5000
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Support for WDMTG',
    :currency    => 'usd',
    :customer    => customer.id
  )
  erb :charge
end

error Stripe::CardError do
  env['sinatra.error'].message
end
