module Admins
  class ManufacturersController < BaseController
    before_action :set_manufacturer, only: [ :edit, :update, :destroy]
    def index
      @manufacturers = Manufacturer.all
    end

    def new
      @manufacturer = Manufacturer.new
      render layout: false
    end

    def create
      @manufacturer = Manufacturer.new(manufacturer_params)
      if @manufacturer.save
        redirect_to admins_manufacturers_path, notice: 'Manufacturer added!'
      else
        render 'new', layout: false, status: :unprocessable_entity
      end
    end

    def edit
      render layout: false
    end

    def update
      if @manufacturer.update(manufacturer_params)
        redirect_to admins_manufacturers_path, notice: 'Manufacturer updated!'
      else
        render 'edit', layout: false, status: :unprocessable_entity
      end
    end

    def destroy
      @manufacturer.destroy
      redirect_to admins_manufacturers_path
    end

    private
      def manufacturer_params
        params.require(:manufacturer).permit(:name, :created_at, :updated_at)
      end

      def set_manufacturer
        @manufacturer = Manufacturer.find(params[:id])
      end

  end

end