class SpacesController < ApplicationController

  def new
    # byebug
    @grid = Grid.last
    @spaces = @grid.spaces
  end

  def create

    @location = params[:location]
    @space = Space.find_by(location: @location)
    @guessed = @space.guessed
    # byebug
    bomb_present = Space.bomb_checker(@location)
    if bomb_present
      redirect_to "/spaces/loser"
    else
      Space.make_guess(@location)
      if Space.win
        redirect_to "/spaces/winner"
      else
        # redirect to page with guess
      end
    end
  end

  def loser
  end

  def winner
  end

  def show
  end

  private

  def spaces_params
    params.require(:spaces).permit(:guessed)
  end
end
