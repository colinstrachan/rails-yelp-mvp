class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    @categories = ["chinese", "italian", "japanese", "french", "belgian"]
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end
end
