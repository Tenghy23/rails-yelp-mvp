class RestaurantsController < ApplicationController
  def index # get all data from model
    @restaurants = Restaurant.all
  end

  def new # create new instance from model
    @restaurant = Restaurant.new
  end

  def show # display specific instance from model
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
