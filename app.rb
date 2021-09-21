require 'sinatra/base' 
require 'sinatra/reloader' 
require './lib/peep'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Chitter"
  end
  
  get '/peeps' do
    @peep = Peep.all

    erb :'peeps/index'
  end

  run! if app_file == $0
end
