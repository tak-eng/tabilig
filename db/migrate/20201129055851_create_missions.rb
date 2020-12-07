class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.boolean :checked
      t.references  :trip,  null: false, foreign_key: 
      t.timestamps
    end
  end
end
