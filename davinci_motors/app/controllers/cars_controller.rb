class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :show, :update, :destroy ]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} created"
    if @car.save
      redirect_to cars_path,
        :notice => creation_message
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    update_message = "#{@car.year} #{@car.make} #{@car.model} updated"
    if @car.save
      redirect_to car_path,
        :notice => update_message
    end
  end

  def show
  end
  private

  def car_params
    params.require(:car).permit([:year, :make, :model, :price])
  end

  def set_car
    @car = Car.find(params[:id])
  end
end

