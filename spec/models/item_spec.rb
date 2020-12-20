require 'rails_helper'

RSpec.describe Item, type: :model do
  it "textが空だと登録できない" do
    @item = Item.new(name: "")
    @item.valid?
    expect(@item.errors.full_messages).to include("持ち物を入力してください")
  end

  it "持ち物に全角漢字、ひらがな、カタカナが使われていなければ登録できないこと" do
    @item = Item.new(name: "123ab")
    @item.valid?
    expect(@item.errors.full_messages).to include("持ち物は不正な値です")
  end
end
