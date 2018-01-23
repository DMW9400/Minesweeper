class Space < ApplicationRecord
  belongs_to :grid


  def self.bomb_checker(location)
    @user_guess = Space.find_by(location: location)
    if @user_guess.bomb == true
      true
    else
      false
    end
  end

  def self.make_guess(location)
    @user_guess = Space.find_by(location: location)
    @user_guess.update(guessed: true)
    @add_guess_to_session = Session.create(guesses: @user_guess.location)
  end

  def self.win
    @guess_count = Space.where(:guessed => true).count
    #change this to 2 afterwards
      if @guess_count >= 2
        true
      else
        false
      end
  end

    def self.reset
      Space.all.each do |space|
        space.guessed = false
        space.save
      end
    end







end
