require 'rails_helper'

RSpec.describe Memo, type: :model do
  it "textが空だと登録できない" do
    @memo = Memo.new(text: "")
    @memo.valid?
    expect(@memo.errors.full_messages).to include("メモを入力してください")
  end

  it "備忘録に全角漢字、ひらがな、カタカナが使われていなければ登録できないこと" do
    @memo = Memo.new(text: "123ab")
    @memo.valid?
    expect(@memo.errors.full_messages).to include("メモは不正な値です")
  end
end
