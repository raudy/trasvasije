class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :cantidad
      t.date :fecha
      t.references :customer, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
