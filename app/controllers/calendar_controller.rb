class CalendarController < ApplicationController
  def index
    @reservation = Reservation.all
  end
  def reserve
    @reservation = Reservation.new
  end
  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:name, :date, :time, :course))
    @reservation.save
  end
end
