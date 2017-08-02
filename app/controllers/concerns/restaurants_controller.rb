class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  def index         # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
  @restaurant = Restaurant.new
  end

  def create        # POST /restaurants
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
  end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy
     @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
