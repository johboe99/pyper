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
    @users = User.all
  end
end
