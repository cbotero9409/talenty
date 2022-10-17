class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @workers = @category.users.uniq
  end

  def worker
    @worker = User.find(params[:id])
    @services = @worker.services
    @reviews = @worker.reviews
  end
end
