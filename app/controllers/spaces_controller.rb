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

    bomb_present = Space.bomb_checker(@location)
    redirect_to "/spaces/location=#{@location}"
    # if bomb_present
    #   redirect_to "/spaces/location=#{@location}"
    # else
    #   Space.make_guess(@location)
    #   if Space.win
    #     redirect_to "/spaces/location=#{@location}"
    #
    #   else
    #     # redirect to page with guess
    #     # redirect_to "/spaces/location=#{@location}"
    #   end
    # end
  end

  # def loser
  # end

  # def winner
  # end

  def location
    # byebug
    @location = params[:location][-2..-1]
    @space = Space.find_by(location: @location)
    @guessed = @space.guessed
    # byebug
    bomb_present = Space.bomb_checker(@location)
    # if bomb_present
    #   redirect_to "/spaces/location=#{@location}"
    # else
    #   Space.make_guess(@location)
    #   if Space.win
    #     redirect_to "/spaces/location=#{@location}"
    #
    #   else
    #     # redirect to page with guess
    #     redirect_to "/spaces/location=#{@location}"
    #   end
    # end
  end

  private

  def spaces_params
    params.require(:spaces).permit(:guessed)
  end
end
