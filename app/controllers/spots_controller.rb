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

    @categories = Category.all

    if params[:category_id].present? && params[:user_id].present?
      @spots = Spot.joins(:reviews).where(
        reviews: { user_id: params[:user_id] },
        category_id: params[:category_id]
      ).distinct
    elsif params[:category_id].present?
      @spots = Spot.joins(:reviews).where(
        reviews: { user_id: @followings.pluck(:id) },
        category_id: params[:category_id]
      ).distinct
    elsif params[:user_id].present?
      @spots = Spot.joins(:reviews).where(
        reviews: { user_id: params[:user_id] }
      ).distinct
    else
      @spots = Spot.joins(:reviews).where(
        reviews: { user_id: @followings.pluck(:id) }
      ).distinct
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

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      redirect_to new_spot_review_path(@spot), notice: 'Spot was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @average_rating = @spot.average_rating
    @followings = current_user.followings
    @followings_reviews = @spot.reviews.where(user_id: @followings.pluck(:id))

    followings_ids = current_user.followings.pluck(:id)
    Review.where(spot: @spot, user: followings_ids).map { |review| review.tags.pluck(:name) }.flatten
    @tag_names = Review.where(spot: @spot, user: followings_ids).map { |review| review.tags.pluck(:name) }.flatten.uniq
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :description, :address, :photo, :category_id, :opening_hours)
  end


end
