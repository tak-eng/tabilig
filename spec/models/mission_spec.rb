require 'rails_helper'

RSpec.describe Mission, type: :model do
  it "nameが空だと登録できない" do
    mission = Mission.new(name: "")
    mission.valid?
    expect(mission.errors.full_messages).to include("現地でやることを入力してください")
  end
end
