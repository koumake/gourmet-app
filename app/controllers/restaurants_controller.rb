class RestaurantsController < ApplicationController
  before_action :search_restaurant, only: [:index, :search]
  
  def index
    @restaurants = Restaurant.all
    set_restaurant_column
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
   
    if @restaurant.save
      
      redirect_to root_path
    else
      render :new
    end
    
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end
  def search
   
    @results = @p.result
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
    params.require(:restaurant).permit(:name, :image, :name_alias, :tel, :about, :prefecture, :city_address, :building_name,  :reserve_id, :transportation, :hours, :holiday, :budget_dinner_id, :budget_lunch_id, :seats_number, :seats_number_explain, :private_room_id, :private_room_explain, :charter_id, :smoking_id, :drink_id, :food_id, :homepage, :genre, :scene, :feature, menus: [] ).merge(user_id: current_user.id)
  end
  def search_restaurant
    @p = Restaurant.ransack(params[:q])
  
  end
  def set_restaurant_column
    @restaurant_genre = Restaurant.select("genre").distinct
    @restaurant_scene = Restaurant.select("scene").distinct
    @restaurant_feature = Restaurant.select("feature").distinct
  end
end
