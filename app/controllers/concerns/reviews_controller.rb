class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new           # GET /restaurants/new
    @review = Review.new
  end

  def create        # POST /restaurants
  review = Review.new(review_params)
  review.restaurant = @restaurant
  review.save
  redirect_to restaurant_path(@restaurant)

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

   def set_restaurant
    @restaurant = Restaurant.find(params[:review])
  end
end
