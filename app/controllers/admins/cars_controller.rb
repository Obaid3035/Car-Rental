module Admins
  class CarsController < ApplicationController
    def index
      @cars = Cars.all
    end

    def new
      @car = Car.new
    end

    def create
      @car = Car.new(car_params)
    end

    private
      def car_params
        params.require(:car).permit(:name, :year, :license_plate, :manufacturer_id)
      end
  end
end
