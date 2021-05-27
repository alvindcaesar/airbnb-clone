class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build (booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking was successfully created"
    else
      render :new
      flash.now[:alert] = "Unable to create booking. Please try again!"
    end
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
