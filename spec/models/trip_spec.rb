require 'rails_helper'
 RSpec.describe Trip, type: :model do
   describe '旅行先の新規登録' do
    it "nameが空だと登録できない" do
      trip = Trip.new(name: "")
      trip.valid?
      expect(trip.errors.full_messages).to include("Name can't be blank")
    end
   end
 end
