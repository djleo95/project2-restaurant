class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :guest_id, foreign_key: true
      t.integer :table_id, foreign_key: true
      t.string :code
      t.date :day
      t.integer :time_in
      t.boolean :isConfirm, default: false
      t.integer :discount, default: 0

      t.timestamps
    end
  end
end
