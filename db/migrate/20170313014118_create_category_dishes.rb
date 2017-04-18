class CreateCategoryDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_dishes do |t|
      t.integer :category_id, foreign_key: true
      t.integer :dish_id, foreign_key: true

      t.timestamps
    end
  end
end
