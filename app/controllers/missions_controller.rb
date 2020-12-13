class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @trip = Trip.find(params[:trip_id])
      if @mission.valid?
         @mission.save
         redirect_to controller: :trips, action: :show, id: @trip.id
      else
        render "index"
      end
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    mission = @trip.missions.find(params[:id])
    mission.destroy
    redirect_to controller: :trips, action: :show, id: @trip.id
  end

  private

  def mission_params
    params.permit(:name, :trip_id)
  end
end
