class BoatsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :new
  def index
    @boats = Boat.all

    # geocoded scope
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
    end
  end

  def new
    @boat = Boat.new
  end

  def show
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user

    if @boat.save
      redirect_to boats_path, notice: "Your boat has been added successfully."
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

    redirect_to boats_path, notice: "Your boat has been deleted successfully."
  end

  private

  def set_id
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:category, :brand, :location, :length, :price_per_day, :capacity, :building_year, :title, :photo)
  end
end
