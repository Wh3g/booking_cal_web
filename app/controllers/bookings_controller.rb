class BookingsController < ApplicationController
  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to bookings_url
  end
  
  private 

  def booking_params
    params.require(:booking).permit(:name, :service, :date, :start_time)
  end
end
