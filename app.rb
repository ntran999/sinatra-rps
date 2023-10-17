require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/paper") do
  options = ["paper","scissors","rock"]
  @player_2 = options.sample
  if @player_2 == "paper"
    @outcome = " They played Paper! <br><br> We tied!"
  end
  if @player_2 == "rock"
    @outcome = " They played Rock! <br><br> We won!"
  end
  if @player_2 == "scissors"
    @outcome = " They played Scissors! <br><br> We lost!"
  end
  erb(:paper)
end

get("/rock") do
  options = ["paper","scissors","rock"]
  @player_2 = options.sample
  if @player_2 == "paper"
    @outcome = " They played Paper! <br><br> We lost!"
  end
  if @player_2 == "rock"
    @outcome = " They played Rock! <br><br> We tied!"
  end
  if @player_2 == "scissors"
    @outcome = " They played Scissors! <br><br> We won!"
  end
  erb(:rock)
end

get("/scissors") do
  options = ["paper","scissors","rock"]
  @player_2 = options.sample
  if @player_2 == "paper"
    @outcome = " They played Paper! <br><br> We won!"
  end
  if @player_2 == "rock"
    @outcome = " They played Rock! <br><br> We lost!"
  end
  if @player_2 == "scissors"
    @outcome = " They played Scissors! <br><br> We tied!"
  end
  erb(:scissors)
end
