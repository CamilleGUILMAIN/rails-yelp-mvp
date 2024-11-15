class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
