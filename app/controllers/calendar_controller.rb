class CalendarController < ApplicationController
  protect_from_forgery except: :create
  def index
    @reservation = Reservation.all
  end
  def reserve
    @reservation = Reservation.new
  end
  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:name, :date, :time, :course))
    @reservation.save
    redirect_to calendar_create_path
  end
end
