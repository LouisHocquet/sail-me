class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @boat = Boat.new
  end

  def new
    @boat = Boat.new
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boats = Boat.all
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boats_path
    else
      render 'index'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update

  end


  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:category, :brand, :location, :length, :price_per_day, :capacity, :building_year, :engine_power)
  end
end
