require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  post '/result' do
    myClass = PigLatinizer.new(params[:text])
    binding.pry
    mySentence = myClass.result
    erb :pig_latin_result
  end

end
