require 'rails_helper'
 RSpec.describe Trip, type: :model do
   describe '旅行先の新規登録' do
    it "nameが空だと登録できない" do
      trip = Trip.new(name: "")
      trip.valid?
      expect(trip.errors.full_messages).to include("旅行先を入力してください")
    end

    it "旅行先に全角漢字、ひらがな、カタカナが使われていなければ登録できないこと" do
      @trip = Trip.new(name: "123ab")
      @trip.valid?
      expect(@trip.errors.full_messages).to include("旅行先は不正な値です")
    end
   end
 end
