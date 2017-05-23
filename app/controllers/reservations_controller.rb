class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show]
  before_action :authenticate_user!

  def create
    @reservation = current_user.reservations.create(reservation_params)
    redirect_to @reservation.room, notice: "Your reservation has been made!"
  end

  def new
    @room = Room.find(params[:room_id])
  end

  def show

  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
