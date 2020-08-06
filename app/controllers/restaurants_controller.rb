class RestaurantsController < ApplicationController
  def index
    
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    
  end
  def show
    
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update(restaurant_params)
  end
  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
  end

  private
  def restaurant_params
    params.require(:room).permit(:name, :name_alias, :tel, :prefecture, :city_address, :building_name, :map, :genre_id, :reserve_id, :transportation, :hours, :holiday, :budget_dinner_id, :budget_lunch_id, :seats_number, :seats_number_explain, :private_room_id, :private_room, :charter_id, :smoking_id, :feature_id, :drink_id, :food_id, :homepage)
  end
end
