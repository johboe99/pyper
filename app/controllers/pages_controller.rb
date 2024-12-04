class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @followers = @user.followers
    @followings = @user.followings
    @reviews = @user.reviews
    @spots = []

    @reviews.each do |review|
      @spots << review.spot
    end

    @user = current_user
    @recommendations = @user.reviews.map { |review | review.spot }
    @first_recommendation = @recommendations.shift

  end

  def friends
    if params[:query].present?
      query = params[:query].downcase
      @users = User.where("LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ? OR LOWER(email) LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
    else
      @users = User.all
    end
  end

  def spot_review
    @spot = Spot.find(params[:id])
    @my_review = @spot.reviews.find_by(user: current_user)
    @tag_names = Review.where(spot: @spot, user: current_user).map { |review| review.tags.pluck(:name) }.flatten.uniq
  end
end
