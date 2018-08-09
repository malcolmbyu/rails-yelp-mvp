class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end

# A visitor can see the list of all restaurants.
#   GET "restaurants"
# He can add a new restaurant, and be redirected to the show view of that new restaurant.
#   GET "restaurants/new"
#   POST "restaurants"
# He can see the details of a restaurant, with all the reviews related to the restaurant.
#   GET "restaurants/38"
# He can add a new review to a restaurant
#   GET "restaurants/38/reviews/new"
#   POST "restaurants/38/reviews"
