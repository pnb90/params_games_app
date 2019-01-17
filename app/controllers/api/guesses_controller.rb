class Api::GuessesController < ApplicationController

  def name_input
    @name = params[:name].capitalize

    if @name[0] == "A"
      @name_game_message = "Hey, your name starts with the first letter of the alphabet!" 
    end 

    render 'name_game.json.jbuilder'
  end

    def string_guessing_game_no_wildcard
    @guess = params[:number_guess].to_i

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


  def segment_guessing_game
    @number = params[:number].to_i

    correct_number = 42
    
    #puts statements in controller puts it into the terminal - useful for debugging 

    if @number > correct_number 
      @message = "Guess lower"
    elsif @number < correct_number
      @message = "Guess higher"
    elsif @number == correct_number
      @message = "You got it!"
    end

    render 'segment_guessing_game.json.jbuilder'
  end

  def body_guessing_game
    @secret_guess = params[:secret_number].to_i
    correct_number = 56

     if @secret_guess > correct_number 
      @message = "Guess lower"
    elsif @secret_guess < correct_number
      @message = "Guess higher"
    elsif @secret_guess == correct_number
      @message = "You got it!"
    end
    render 'body_guessing_game.json.jbuilder'
  end

end
