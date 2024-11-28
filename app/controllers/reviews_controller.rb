class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @spot = Spot.find(params[:spot_id])
    @tags = Tag.all
  end

  def create
    @review = Review.new(review_params)
    @spot = Spot.find(params[:spot_id])
    @user = current_user
    @review.user = @user
    @review.spot = @spot
      if @review.save
        #create_review_tags(@review, params[:review][:tag_ids])
        redirect_to spot_path(@spot), notice: "Review created successfully!"
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to_spot_path(@review.spot)
  end

 private

  def review_params
    params.require(:review).permit(:content, :rating, tag_ids: [])
  end

  #def create_review_tags(review, tag_ids)
  # tag_ids.each do |tag_id|
  #  ReviewsTag.create(review: review, tag_id: tag_id)
  # end
  #end
end
