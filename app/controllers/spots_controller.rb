class SpotsController < ApplicationController
  def index
    @user = current_user
    @followings = @user.followings
    @spots = []

    @followings.each do |following|
      following.reviews.each do |review|
        @spots << review.spot
      end
    end
  end

  def show
    @user = current_user
    @followings = @user.followings
    @spots = []

    @followings.each do |following|
      following.reviews.each do |review|
        @spots << review.spot
      end
    end

    @spot = @spots.find { |spot| spot.id == params[:id].to_i }
    rating_sum = 0

    @spot.reviews.each do |review|
      rating_sum += review.rating
    end

    @average_rating = rating_sum / @spot.reviews.count

  end  
end
