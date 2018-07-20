require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

  get '/' do
    "This is a homepage"
  end 

  get '/reverse' do
    erb :reverse
  end
  
  post '/reverse' do 
  original_string = params["string"]
  @reversed_string = original_string.reverse
    erb :reversed 
  end 
  
  get '/friends' do 
     @friends 
  end 

end