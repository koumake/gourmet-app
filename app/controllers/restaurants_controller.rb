class RestaurantsController < ApplicationController
  before_action :search_restaurant, only: [:search]
  
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    
  end
  def show

  end
  def search
    @area_results = @r.area_result
    @genre_results = @r.genre_result
    @scene_results = @r.scene_result
    @feature_results = @r.feature_result

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
    params.require(:restaurant).permit(:name, :name_alias, :tel, :prefecture, :city_address, :building_name, :map, :reserve_id, :transportation, :hours, :holiday, :budget_dinner_id, :budget_lunch_id, :seats_number, :seats_number_explain, :private_room_id, :private_room_explain, :charter_id, :smoking_id, :drink_id, :food_id, :homepage, :area, :genre, scene: [], feature: [])
  end
  def search_restaurant
    @r = Restaurant.ransack(params[:q])
   
  end

end
