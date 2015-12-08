class ChangeTypeCantidad < ActiveRecord::Migration
  def up
  	change_table :deliveries do |t|
  		t.change :cantidad, :decimal
  	end
  end

  def down
  	change_table :deliveries do |t|
  		t.change :cantidad, :integer
  	end
  end
end