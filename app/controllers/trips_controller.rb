class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    Trip.create(trip_params)
  end

  private
  def trip_params
    params.require(:trip).permit(:name)
  end

end
