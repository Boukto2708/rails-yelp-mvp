class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(reviews_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant) , notice: 'well done bro!.'
    else
      render :new
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
