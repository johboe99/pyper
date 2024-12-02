class FollowsController < ApplicationController
  def create
    @user = User.find(params[:user_id])

    # Ensure the user isn't following themselves
    unless current_user == @user
      # Create the follow relationship in the 'followers' table
      current_user.followers_as_asker.create(receiver: @user)
    end

    redirect_to friends_path
  end

  def destroy
    @user = User.find(params[:user_id])

    # Find the relationship and destroy it
    current_user.followers_as_asker.find_by(receiver: @user)&.destroy

    redirect_to friends_path
  end
end
