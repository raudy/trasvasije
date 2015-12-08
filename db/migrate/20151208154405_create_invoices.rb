class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :codigo
      t.date :fecha
      t.decimal :neto
      t.decimal :bruto
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
