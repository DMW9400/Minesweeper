class SpacesController < ApplicationController

  def new
    @grid = Grid.last
    @spaces = @grid.spaces

  end

  def create

    @location = params[:location]
    bomb_present = Space.bomb_checker(@location)
          # byebug
    if bomb_present
      # redirect to lose page
      redirect_to "/spaces/loser"
    else
      # redirect to page with guess
      puts "No Bomb"
    end

  end

  def loser
  end

  def show
    byebug

  end

  private

  def spaces_params
    params.require(:spaces).permit(:guessed)
  end
end
