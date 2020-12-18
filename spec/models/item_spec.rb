require 'rails_helper'

RSpec.describe Item, type: :model do
  it "textが空だと登録できない" do
    @item = Item.new(name: "")
    @item.valid?
    expect(@item.errors.full_messages).to include("持ち物を入力してください")
  end
end
