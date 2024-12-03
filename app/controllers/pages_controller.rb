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
end
