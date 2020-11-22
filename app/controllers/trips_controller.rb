class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
      if @trip.valid?
        @trip.save
        redirect_to "/trips/:trip_id/items"
      else
        render "new"
      end
  end

  private
  def trip_params
    params.require(:trip).permit(:name)
  end

end
