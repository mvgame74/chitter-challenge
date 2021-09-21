require 'sinatra/base' 
require 'sinatra/reloader' 

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Chitter"
  end
  
  get '/peeps' do
    @peeps = [
      "It's a beautiful day",
      "Wake me up when September ends"
    ]

    erb :'peeps/index'
  end

  run! if app_file == $0
end
