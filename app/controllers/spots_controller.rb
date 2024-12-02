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
          info_window_html: render_to_string(partial: "info_window", locals: {spot: spot}),
          marker_html: "<div style='background-image: url(#{Cloudinary::Utils.cloudinary_url('pin_pbzvmh.png')});
                        background-size: contain; background-repeat: no-repeat;
                        background-position: center; width: 30px; height: 30px;'></div>"
        }
      end
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @user = current_user
    @followings = @user.followings
    @spots = []

    @followings.each do |following|
      following.reviews.each do |review|
        @spots << review.spot
      end
    end

    @average_rating = @spot.average_rating

  end
end
