class RestaurantsController < ApplicationController
  def show
  	@restaurant = Restaurant.find params[:id]
  end

  def new
  	@restaurant = Restaurant.new
  	@categories = Category.all
  end

  def create
  	@restaurant = Restaurant.new strong_params

  	if @restaurant.save
  		redirect_to restaurant_path(@restaurant)
  	else
  		render :new
  	end
  end

  private

  def strong_params
  	params.require(:restaurant).permit(:category_id, :name, :address)
  end
end
