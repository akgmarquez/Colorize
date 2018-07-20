require 'bundler'
Bundler.require
require_relative '../models/sample_model.rb'
# require_relative 'models/ny_data_model.rb'
class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/random_page' do
    erb :random_page
  end

  get '/content.erb' do
    erb :content
  end


#   get '/results' do
#     erb :results
#   end

  post '/results' do
    @item = colorize(params[:Q2], params[:Q3], params[:Q1])
    erb :results
  end
end