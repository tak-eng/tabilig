class MemosController < ApplicationController
  def index
    @memos = Memo.all
    @memo = Memo.new
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    @trip = Trip.find(params[:trip_id])
      if @memo.valid?
         @memo.save
         redirect_to controller: :trips, action: :show, id: @trip.id
      else
        render "index"
      end
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    memo = @trip.memos.find(params[:id])
    memo.destroy
    redirect_to controller: :trips, action: :show, id: @trip.id
  end

  private

  def memo_params
    params.permit(:text, :trip_id)
  end
end
