class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @workers = @category.users.uniq
  end

  def worker
    @worker = User.find(params[:id])
    @services = @worker.services
    @reviews = @worker.reviews
    @rating = calculate_rating(@reviews)
  end

  private

  def calculate_rating(reviews)
    return "" unless reviews.any?

    sum = 0
    reviews.each { |review| sum += review.rating}
    avg = sum / reviews.length
    return "#{avg}/5"
  end
end
