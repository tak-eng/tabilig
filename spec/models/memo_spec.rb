require 'rails_helper'

RSpec.describe Memo, type: :model do
  it "textが空だと登録できない" do
    @memo = Memo.new(text: "")
    @memo.valid?
    expect(@memo.errors.full_messages).to include("メモを入力してください")
  end
end
