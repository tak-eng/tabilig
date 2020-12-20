require 'rails_helper'

RSpec.describe Mission, type: :model do
  it "nameが空だと登録できない" do
    mission = Mission.new(name: "")
    mission.valid?
    expect(mission.errors.full_messages).to include("現地でやることを入力してください")
  end

  it "ミッションに全角漢字、ひらがな、カタカナが使われていなければ登録できないこと" do
    @mission = Mission.new(name: "123ab")
    @mission.valid?
    expect(@mission.errors.full_messages).to include("現地でやることは不正な値です")
  end
end
