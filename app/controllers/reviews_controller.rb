class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @review = Review.new(review_params)
    @spot = Spot.find(params[:spot_id])
    @review.user = @user
    @user = current_user
      if @review.save
        redirect_to spot_path(@spot), notice: "Review created successfully!"
      else
        render "spots/show", status: :unprocessable_entity
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to_spot_path(@review.spot)
  end

 private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
