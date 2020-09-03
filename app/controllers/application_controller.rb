require "./config/environment"
#require "./app/models/user"
class ApplicationController < Sinatra::Base

    configure do
      set :public_folder, 'public'
      set :views, 'app/views'
      enable :sessions
      #set :session_secret, "carcollection"
       set :session_secret, "auth_demo_lv"
    end

    #get '/' do
    #  "This is the start of my Sinatra project!"
    #end

    get "/" do
      erb :index
    end

    get '/home' do
      "This is my home screen"
    end

  end
