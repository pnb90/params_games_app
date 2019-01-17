Rails.application.routes.draw do
  namespace :api do
    get '/name_guessing_game' => 'guesses#name_input'

    get '/string_guessing_game' => 'guesses#string_guessing_game'
  end

end
