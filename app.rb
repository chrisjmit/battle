require 'sinatra/base'



class Battle < Sinatra::Application
  get '/' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

run! if app_file == $0
end
