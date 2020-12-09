class ItemsController < ApplicationController
  def index
    @items = Item.all
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @trip = Trip.find(params[:trip_id])
      if @item.valid?
         @item.save
         redirect_to controller: :trips, action: :show, id: @trip.id
      else
        render "index"
      end
  end

  private

  def item_params
    params.permit(:name, :trip_id)
  end
end
