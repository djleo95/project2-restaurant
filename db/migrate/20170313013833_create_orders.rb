class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :guest, foreign_key: true
      t.references :table, foreign_key: true
      t.string :code
      t.date :date
      t.time :time_in
      t.boolean :isConfirm, default: false
      t.integer :discount, default: 0

      t.timestamps
    end
  end
end
