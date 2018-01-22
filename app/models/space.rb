class Space < ApplicationRecord
  belongs_to :grid


  def self.bomb_checker(location)
    puts "Bomb Checker! #{location} checked"
    @user_guess = Space.find_by(location: location)
    if @user_guess.bomb == true
      true
    else
      make_guess
    end

  end

  def make_guess(user_guess)
    @user_space = Space.find_by(id: user_guess)
    @user_space.update(guessed: true)
  end

  def guess_count_checker
    @guess_count = Space.where(:guessed => true).count
      if @guess_count == 2
        # show_winner_page
      else
        # show_guess_page
        bomb_checker
      end
  end








end
