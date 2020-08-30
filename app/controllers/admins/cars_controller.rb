module Admins
  class CarsController < BaseController
    before_action :set_car, only: [ :edit, :update, :destroy]
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

    def edit
      render layout: false
    end

    def update
      if @car.update(car_params)
        redirect_to admins_cars_path, notice: 'Car updated!'
      else
        render 'edit', layout: false
      end
    end

    def destroy
      @car.destroy
      redirect_to admins_cars_path
    end

    private
      def set_car
        @car = Car.find(params[:id])

      end

      def car_params
        params.require(:car).permit(:name, :brand_id, :created_at, :updated_at)
      end

  end

end
