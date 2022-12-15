class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = User.find_by_email(params[:email]).id
    puts @car.user_id
    if @car.save
      render json: @car, each_serializer: CarSerializer
    else
      render json: { error: 'Bad Request' }, status: :not_acceptable
    end
  end

  def show
    @car = Car.find(params[:id])
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
