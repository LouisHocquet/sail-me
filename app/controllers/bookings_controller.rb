class BookingsController < ApplicationController
before_action :authenticate_user!, only: :new
  def index
    if current_user
      @id = current_user.id
      @bookings = Booking.where(user_id: @id)
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
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @boat = @booking.boat
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to bookings_path, notice: "This booking has been updated successfully."
    else
      render 'new'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking[:status] = "Accepted"
    @booking.save
    redirect_to bookings_path, notice: "This booking has been accepted successfully."
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking[:status] = "Rejected"
    @booking.save
    redirect_to bookings_path, notice: "This booking has been rejected successfully."
  end

  def my_bookings
    @bookings = Booking.where(user == current_user)
  end

  def manage_bookings
    raise
    @bookings = Booking.where(boat_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
