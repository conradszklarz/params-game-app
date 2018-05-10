class Api::ParamsGamesAppController < ApplicationController
  def name_game
    @name = params["name"].upcase
    render 'name_game.json.jbuilder'
  end

  def a_game
    @name = params["name"].downcase
    if @name.downcase.start_with?("a") 
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'a_name.json.jbuilder'
  end

  def url_guessing
    @guess = params["guess"].to_i
    answer = 42

    if @guess > answer
      @hint "too high, guess lower"
    elsif  @guess < answer
      @hint "too low, guess higher"
    else 
      @hint "Stop digging, You won!!!"
    end
    render 'url_guessing.json.jbuilder'
  end
end
