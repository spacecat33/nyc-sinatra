require 'rack-flash'
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, ENV{"SESSION_SECRET"}
  set :views, Proc.new { File.join(root, "../views/") }
  use Rack::Flash

  get '/' do
    erb :index
  end
end
