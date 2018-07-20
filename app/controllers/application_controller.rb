require 'bundler'
Bundler.require
# require_relative 'models/model.rb'
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

  post '/results.erb' do
    p params
    person = Project.new(params)
    @answer = person.final_results
    p @answer
    @final_array = person.get_results(@answer)
    erb :results
  end
end