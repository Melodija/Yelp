class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.build_review params, current_user
    if @review.saveredirect_to restaurants_path
    else
      if @review.errors[:user]

    end

    end
    @restaurant.reviews.create(review_params)
    redirect_to '/restaurants'
  end
  def review_params
   params.require(:review).permit(:thoughts, :rating)
  end
end
