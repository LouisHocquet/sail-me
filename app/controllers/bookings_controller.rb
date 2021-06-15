class BookingsController < ApplicationController
  def index
    if current_user
      @id = current_user.id
      @bookings = Booking.where(user_id:@id)
    else
      @bookings = Booking.all
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.user = current_user
    @booking.boat = @boat
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
