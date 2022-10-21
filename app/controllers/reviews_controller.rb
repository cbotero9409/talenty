class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.user = @booking.service.user
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render "bookings/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
