class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant crée avec talent et respect.'
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
