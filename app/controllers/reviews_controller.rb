class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews, include: :reviews
  end

end
