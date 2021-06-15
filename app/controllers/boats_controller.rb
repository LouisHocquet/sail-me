class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user

    if @boat.save
      redirect_to boat_path(@boat)
    else
      render 'boats/show'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render 'new'
    end
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy

    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:category, :brand, :location, :length, :price_per_day, :capacity, :building_year, :engine_power)
  end
end
