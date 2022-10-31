class BookingsController < ApplicationController
  def index
    Booking.all.each { |booking| update_status(booking) }
    @worker_bookings = Booking.joins(:service).where(service: {user: current_user}).order(id: :desc)
    @customer_bookings = Booking.where(user: current_user).order(id: :desc)
  end

  def new
    @booking = Booking.new
    @booking.start_date = Time.now - (3600 * 4)
    @booking.end_date = Time.now - (3600 * 3)
    @service = Service.find(params[:service_id])
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    update_status(@booking)
    if @booking.review.nil?
      @review = Review.new
    else
      @review = @booking.review
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :status)
  end

  def update_status(booking)
    booking.end_date < (Time.now - (5 * 3600)).utc ? booking.update(status: true) : booking.update(status: false)
  end
end
