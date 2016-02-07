require 'sinatra/base'

class Rps < Sinatra::Base
	enable :sessions

  get '/' do
     'Hello rps-challenge!'
      erb :index
  end

   post '/name' do
   	session[:marketeers_name] = params[:marketeers_name]
  	redirect '/play'
  end

  get '/play' do
	@marketeers_name = session[:marketeers_name]
  	erb :play
  end

 

  # start the server if ruby file executed directly
  run! if app_file == $0
end

