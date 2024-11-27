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

    @markers = []
    @spots.each do |spot|
      if spot.geocoded?
        @markers <<
        {
          lat: spot.latitude,
          lng: spot.longitude,
          #info_window_html: render_to_string(partial: "info_window", locals: {spot: spot})
        }
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
    @reviews = []
    rating_sum = 0


    @spot.reviews.each do |review|
      if @followings.include?(review.user)
        rating_sum += review.rating
        @reviews << review
      end
    end

    average_rating = rating_sum / @reviews.count
    @average_rating = average_rating.to_f

  end
end
