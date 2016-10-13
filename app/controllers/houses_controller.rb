class HousesController < ApplicationController
  # replace House
  # replace house
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(house_params)

    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)

    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_path
  end

  # strong params
  private
  def house_params
    params.require(:house).permit(:name, :words, :seat, :region, :img_url)
  end
end
