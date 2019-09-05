require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb : user_input.erb
  end

  post '/result' do
    erb : pig_latin_result.erb
  end
end
