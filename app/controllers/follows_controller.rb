class FollowsController < ApplicationController
  def create
    user_to_follow = User.find(params[:user_id])
    current_user.follow(user_to_follow)
    redirect_to users_path, notice: "You are now following #{user_to_follow.first_name}."
  end

  # Unfollow a user
  def destroy
    user_to_unfollow = User.find(params[:user_id])
    current_user.unfollow(user_to_unfollow)
    redirect_to users_path, notice: "You have unfollowed #{user_to_unfollow.first_name}."
  end
end
