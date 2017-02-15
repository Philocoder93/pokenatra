require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection.rb'

require_relative 'models/pokemon'

binding.pry
puts 'program resumes here.'
