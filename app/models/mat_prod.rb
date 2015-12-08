class MatProd < ActiveRecord::Base
  belongs_to :material
  belongs_to :product
  validates :cantidad, :presence => {:message => "no puede estar en blanco"}
  validates_numericality_of :cantidad, :greater_than => 0, :message => "no válida"
end
