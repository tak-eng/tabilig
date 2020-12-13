class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.text :text, null: false
      t.references  :trip,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
