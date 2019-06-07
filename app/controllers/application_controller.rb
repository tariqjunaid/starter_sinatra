class ApplicationController < Sinatra::Base
  set :views, './app/views'
  
    get '/' do
      erb :home
    end
end
