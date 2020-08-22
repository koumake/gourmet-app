class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews.includes(:user)
  end
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    @review.save
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:title, :content, :image, :visit_day).merge(user_id: current_user.id, restaurant_id: params[:restaurant_id])
  end
end
