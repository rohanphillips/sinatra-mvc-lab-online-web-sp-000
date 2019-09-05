require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  post '/result' do
    @pig_latinizer = PigLatinizer.new(params[:user_phrase])
    erb :pig_latin_result
  end

end
