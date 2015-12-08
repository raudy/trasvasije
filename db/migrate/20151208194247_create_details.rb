class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.decimal :cantidad
      t.decimal :hh
      t.references :product, index: true, foreign_key: true
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
