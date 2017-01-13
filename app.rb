require 'sinatra/base'
require 'omniauth'
require 'omniauth-wunderlist'

class App < Sinatra::Base
  use Rack::Session::Cookie, key: "_alexa_wunderlist", secret: ENV.fetch('SESSION_SECRET')
  use OmniAuth::Builder do
    provider :wunderlist, ENV.fetch('WUNDERLIST_CLIENT_ID'), ENV.fetch('WUNDERLIST_CLIENT_SECRET')
  end

  get '/' do
    puts "yes"
  end

  get '/health' do
    head :ok
  end
end
