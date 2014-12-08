class HomeController < ApplicationController
  def index
  end

  def create
	@user = User.new(user_params)
	    if @user.save!
	      @follow = Follower.new(follower_id: @user.id, leader_id: @user.id)
	      @follow.save
	      session[:user_id] = @user.id
	      p "session saved"
	      redirect_to "/home/#{@user.id}/dash"
	    else 
	      flash[:alert] = @user.errors.full_messages
	      redirect_to :back
	    end
  end

  private

  def direction_params
  	params.require(:direction).permit(:origin, :destination)
  end

end
