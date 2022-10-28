class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:id])
    @workers = @category.users.uniq
    @ratings = []
    @workers.each do |worker|
      reviews = worker.reviews
      @ratings << calculate_rating(reviews)
    end
  end

  def worker
    @worker = User.find(params[:id])
    @services = @worker.services
    @reviews = @worker.reviews
    @rating = calculate_rating(@reviews)
    @full_name = full_name(@worker)
  end

  private

  def calculate_rating(reviews)
    return 0 unless reviews.any?

    sum = 0
    reviews.each { |review| sum += review.rating}
    avg = sum / reviews.length
    return avg
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end
