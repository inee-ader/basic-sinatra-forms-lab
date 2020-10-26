require 'sinatra/base'

class App < Sinatra::Base

    get '/' do
        "Hello World"
    end

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        
        # "Here is your team:"
        @team = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @sf = params[:sf]
        @pf = params[:pf]
        @c = params[:c]

        erb :team
    end

    
    

end
