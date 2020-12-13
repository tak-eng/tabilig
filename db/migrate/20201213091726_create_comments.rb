class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.references  :trip,  null: false, foreign_key: 
      t.timestamps
    end
  end
end
