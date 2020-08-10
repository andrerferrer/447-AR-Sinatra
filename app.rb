require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"


# www.mybeautifulwebsite.com/

# This is one route in the router
get("/") do
  # This is the controller
  @restaurants = Restaurant.all
  erb :index
end
# This is one route in the router
get("/restaurants/:id") do
  # This is the controller
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end
# This is one route in the router
post("/restaurants") do
  # This is the controller
  restaurant_name = params[:restaurant_name]
  restaurant_city = params[:restaurant_city]
  restaurant_description = params[:restaurant_description]
  new_restaurant = Restaurant.new
  new_restaurant.name = restaurant_name
  new_restaurant.address = restaurant_city
  new_restaurant.description = restaurant_description
  new_restaurant.save
  redirect '/'
end

