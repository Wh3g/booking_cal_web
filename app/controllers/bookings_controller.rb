class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
    params.require(:booking).permit(:name, :service, :date, :time_start)
  end
end