class BookingsController < ApplicationController
  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @bookings = Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @user = current_user if user_signed_in?
  end

  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = @user.bookings.create(booking_params)
    redirect_to bookings_url
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  private 

  def booking_params
    params.require(:booking).permit(:name, :service, :date, :start_time)
  end
end
