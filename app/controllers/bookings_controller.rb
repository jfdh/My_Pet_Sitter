class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

    @markers = @bookings.geocoded.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude
      }
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :address, :description, :price, :picture)
  end
end
