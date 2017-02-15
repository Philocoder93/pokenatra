require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection.rb'
require_relative 'models/pokemon'

get '/' do
   erb :index
end

get '/see_all' do
  @pokemon = Pokemon.all
  erb :see_all
end

get '/see_all/:input' do
  @pokemon = Pokemon.all[params[:input].to_i]
  erb :see_one
end

get '/add' do
  erb :add
end

post '/add/success' do
  @pokemon = Pokemon.create(name: params[:name], cp: params[:cp].to_i, poke_type: params[:poke_type], img_url: params[:img_url])
  erb :add_success
end

get '/delete' do
  @pokemon = Pokemon.all
  erb :delete
end

get '/delete/success/:id' do
  @toss = Pokemon.all[params[:id].to_i]
  @toss.destroy
  erb :delete_success
end

get '/update' do
  @pokemon = Pokemon.all
  erb :update
end

get '/update/form/:id' do
  @pokemon = Pokemon.all[params[:id].to_i]
  erb :update_form
end

post '/update/success' do
  @pokemon = Pokemon.update(params[:input].to_i, :name => params[:name], :poke_type => params[:poke_type], :cp => params[:cp], :img_url => params[:img_url])
  erb :update_success
end
