module Admins
  class VehiclesController < BaseController
    before_action :set_vehicle, only: [ :edit, :update, :destroy]

    def index
      @vehicle = Vehicle.all
    end

    def new
      @car =
      @vehicle = Vehicle.new
    end

    def create
      @vehicle = Vehicle.new(vehicle_params)
      if @vehicle.save
        redirect_to admins_vehicles_path, notice: 'Vehicle added!'
      else
        render 'new', layout: false
      end
    end

    def edit
      render layout: false
    end

    def update
      if @vehicle.update(vehicle_params)
        redirect_to admins_vehicles_path, notice: 'Vehicle updated!'
      else
        render 'edit', layout: false
      end
    end

    def destroy
      @vehicle.destroy
      redirect_to admins_vehicles_path
    end

    private
      def vehicle_params
        params.require(:vehicle).permit(:year, :reg_no,:brand_id, :car_id, :created_at, :updated_at)
      end

      def set_vehicle
        @vehicle = Vehicle.find(params[:id])
      end


  end

end