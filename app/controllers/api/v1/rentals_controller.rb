class Api::V1::RentalsController < ApplicationController

    def index
      @rentals = Rental.all
      render json: @rentals, status: 200
    end

    def create
      @rental = Rental.new(rental_params)
      if @rental.save
        render json: @rental, status: 200
      else
        render json:  {error: "Error creating rental"}
    end
  end
    
      def destroy
        @rental = Rental.find(params[:id])
        if @rental.destroy
          render json: { message: 'Rental deleted', status: :ok }
        else
          render json: { message: 'Rental  not found', status: :not_found }
        end
      end

      private

      def rental_params
        params.require(:rental).permit(:car_brand, :rent_date, :number_of_days, :location)
      end
    end

