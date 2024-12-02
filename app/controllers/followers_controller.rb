class FollowersController < ApplicationController

  def create
    @receiver = User.find(params[:user_id])
    Follower.create(asker: current_user, receiver: @receiver)
    redirect_to root_path
  end

  def destroy
    @receiver = User.find(params[:user_id])

    # Find the specific follower relationship
    @follower = Follower.find_by(asker: current_user, receiver: @receiver)

    if @follower
      @follower.destroy
    end

    redirect_to root_path
  end
end
