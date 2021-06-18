class BoatsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :new
  def index
    if current_user
      @boats = Boat.where.not(user_id: current_user.id)
      if params[:query].present?
        @boats = Boat.search_by_category_and_location(params[:query])
      end
    else
      @boats = Boat.all
      if params[:query].present?
        @boats = Boat.search_by_category_and_location(params[:query])
      end
    end

    # geocoded scope
    @markers = @boats.geocoded.map do |boat|
      icon = "";
      icon = boat.category == "⛵ sailboat" ? "⛵" : "🚤"
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window:
          render_to_string(partial: "info_window",
          locals: {boat: boat}),
        icon: icon
      }
    end
  end

  def new
    @boat = Boat.new
  end

  def my_boats
    @boats = Boat.where(user_id: current_user.id)

    # geocoded scope
    @markers = @boats.geocoded.map do |boat|
      icon = "";
      icon = boat.category == "⛵ sailboat" ? "⛵" : "🚤"
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window:
          render_to_string(partial: "info_window",
          locals: {boat: boat}),
        icon: icon
      }
    end
  end

  def show
    icon = @boat.category == "⛵ sailboat" ? "⛵" : "🚤"
    @marker = [{
        lat: @boat.latitude,
        lng: @boat.longitude,
        info_window:
        render_to_string(partial: "info_window",
        locals: {boat: @boat}),
      icon: icon
      }]
      @booking = Booking.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user

    if @boat.save
      redirect_to my_boats_path, notice: "Your boat has been added successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    if @boat.save
      redirect_to boat_path(@boat), notice: "Your boat has been updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @boat.destroy

    redirect_to my_boats_path, notice: "Your boat has been deleted successfully."
  end

  private

  def set_id
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:category, :brand, :location, :length, :price_per_day, :capacity, :building_year, :title, :photo)
  end
end
