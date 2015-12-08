class CreateMatProds < ActiveRecord::Migration
  def change
    create_table :mat_prods do |t|
      t.integer :cantidad
      t.references :material, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
