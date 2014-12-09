class HomeController < ApplicationController
  def index
  end

  def show
  	@entrances = Entrance.all
  	render :json => @entrances
  end

  private

  def direction_params
  	params.require(:direction).permit(:origin, :destination)
  end

end
