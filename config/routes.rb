Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'params_games_app#name_game'
    get '/a_name' => 'params_games_app#a_game_app'
    get '/string_guessing' => 'params_games_app#string_guessing'
    get '/url_segment_guessing/:guess' => 'params_games_app#url_guessing'
  end
end
