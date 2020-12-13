class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.references  :trip,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
