Rails.application.routes.draw do
  namespace :api do
    get '/name_guessing_game' => 'guesses#name_input'

    get '/segment_guessing_game/:number' => 'guesses#segment_guessing_game'

    get '/string_guessing_game' => 'guesses#string_guessing_game_no_wildcard'

    post '/body_guessing_game' => 'guesses#body_guessing_game'
  end

end
