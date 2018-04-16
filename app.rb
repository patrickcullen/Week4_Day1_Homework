require("sinatra")
require("sinatra/contrib/all") if development?
also_reload("/models/*")

require_relative("./models/game.rb")

get "/" do
  erb(:home) #this is the name of a file.erb
end

get "/rockpaperscissors/:object1/:object2" do
  @outcome = Game.rockpaperscissors(params[:object1], params[:object2])
  @outcome.capitalize!
  erb(:result) #this is the name of a file.erb
end
