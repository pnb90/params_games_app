class Api::GuessesController < ApplicationController

  def name_input
    @name = params[:name].capitalize

    if @name[0] == "A"
      @name_game_message = "Hey, your name starts with the first letter of the alphabet!" 
    end 

    render 'name_game.json.jbuilder'
  end

  def string_guessing_game
    @guess = params[:guess].to_i

    correct_number = 42
    
    #puts statements in controller puts it into the terminal - useful for debugging 

    if @guess > correct_number 
      @message = "Guess lower"
    elsif @guess < correct_number
      @message = "Guess higher"
    elsif @guess == correct_number
      @message = "You got it!"
    end

    render 'string_guessing_game.json.jbuilder'
  end

end
