class FollowingsController < ApplicationController
  def create
    @receiver = User.find(params[:receiver_id]) # The user to be followed
    @follower = current_user.followers_as_asker.build(receiver: @receiver) # Create the "following" relationship

    if @follower.save
      flash[:notice] = "You are now following #{@receiver.first_name}."
    else
      flash[:alert] = "Unable to follow user."
    end
    redirect_to friends_path
  end

  # Unfollow a user
  def destroy
    @follower = current_user.followers_as_asker.find_by(receiver_id: params[:id])

    if @follower&.destroy
      flash[:notice] = "You have unfollowed the user."
    else
      flash[:alert] = "Unable to unfollow user."
    end
    redirect_to friends_path
  end
end

