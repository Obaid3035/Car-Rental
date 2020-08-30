module Admins
  class BookingsController < BaseController
    def index
      @bookings = Booking.all
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      if @booking.save!
        redirect_to admins_bookings_path
      else
        render 'new', layout: false, status: :ok
      end
    end

    def show
      @booking = Booking.find(params[:id])
    end

    def edit
    end

    private
      def booking_params
        params.require(:booking).permit(:client_name, :father_name, :cnic, :address, :telephone,
                                        :daily_rate, :duration,:daily_rate, :advance_deposit, :balance, :total,
                                        :car_id, :manufacturers_id)
      end
  end

end