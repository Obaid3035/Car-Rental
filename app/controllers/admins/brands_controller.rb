module Admins
  class BrandsController < BaseController
    before_action :set_brand, only: [ :edit, :update, :destroy]

    def index
      @brand = Brand.all
    end

    def new
      @brand = Brand.new
      render layout: false
    end

    def create
      @brand = Brand.new(brand_params)
      if @brand.save
        redirect_to admins_brands_path, notice: 'Brand added!'
      else
        render 'new', layout: false
      end
    end

    def edit
      render layout: false
    end

    def update
      if @brand.update(brand_params)
        redirect_to admins_brands_path, notice: 'brand updated!'
      else
        render 'edit', layout: false
      end
    end

    def destroy
      @brand.destroy
      redirect_to admins_brands_path
    end

    private

      def brand_params
        params.require(:brand).permit(:name, :created_at, :updated_at)
      end

      def set_brand
        @brand = Brand.find(params[:id])
      end

  end
end