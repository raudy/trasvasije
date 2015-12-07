class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :rut
      t.string :nombre
      t.string :direccion
      t.integer :fono

      t.timestamps null: false
    end
  end
end
