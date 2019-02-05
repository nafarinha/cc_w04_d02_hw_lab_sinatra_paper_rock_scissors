require "sinatra"
require "sinatra/contrib/all" if development?
require "pry-byebug"
require_relative "./models/game"


get '/play/:throw1/:throw2' do
  game = Game.new(params[:throw1], params[:throw2])
  @game = game.play
  erb (:result)
end


#nav bar
get '/' do
  erb :home
end
