class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def create
    @car = Car.create(@car_params)
    render json: @car
  end

  def show
    render json: @car
  end

  def destroy
    Car.destroy(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :feature, :photo)
  end
end
