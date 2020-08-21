class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.new(reservation_params)
    @reservation.save
    redirect_to root_path
    
  end


  private
  def reservation_params
    
    params.require(:reservation).permit(:date_time, :number, :lastname, :firstname, :lastname_kana, :firstname_kana, :request).merge(user_id: current_user.id, restaurant_id: params[:restaurant_id])
  end
end
