class Delivery < ActiveRecord::Base
  belongs_to :customer
  belongs_to :material
  validates :cantidad, :presence => {:message => "no puede estar en blanco"}, :numericality => {:only_decimal => true, :message => "debe ser un valor numérico"}
  validates_numericality_of :cantidad, :greater_than => 0, :message => "no válida"
end
