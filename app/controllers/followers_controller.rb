class FollowersController < ApplicationController

  def create
    receiver = User.find(params[:user_id])
    Follower.create(asker: current_user, receiver: receiver)
    redirect_to friends_path
  end

  def destroy
    Follower.find(params[:id]).destroy
    redirect_to friends_path
  end
end
