class CreateComboDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :combo_dishes do |t|
      t.integer :combo_id, foreign_key: true
      t.integer :dish_id, foreign_key: true

      t.timestamps
    end
  end
end
