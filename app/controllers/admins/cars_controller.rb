module Admins
  class CarsController < BaseController

    def index
      @cars = Car.all
    end

    def new
      @car = Car.new
      render layout: false
    end

    def create
      @car = Car.new(car_params)
      if @car.save!
        redirect_to admins_cars_path
      else
        render 'new', layout: false, status: :ok
      end
    end

    private
      def car_params
        params.require(:car).permit(:name, :year, :license_plate, :manufacturer_id, :created_at, :updated_at)
      end

  end

end
