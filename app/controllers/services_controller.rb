class ServicesController < ApplicationController
  before_action :set_service, only: [:edit, :update, :destroy]

  def new
    @service = Service.new
    @duration = [["30 minutes", 30], ["1 hour", 60], ["2 hours", 120], ["3 hours", 180], ["4 hours", 240], ["6 hours", 360], ["12 hours", 720], ["24 hours", 1440]]
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to worker_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @duration = [["30 minutes", 30], ["1 hour", 60], ["2 hours", 120], ["3 hours", 180], ["4 hours", 240], ["6 hours", 360], ["12 hours", 720], ["24 hours", 1440]]
  end

  def update
    if @service.update(service_params)
      redirect_to worker_path(current_user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @service.destroy
    redirect_to worker_path(current_user)
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :duration, :category_id)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
