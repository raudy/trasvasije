class Detail < ActiveRecord::Base
  belongs_to :product
  belongs_to :invoice
  validates :cantidad, :presence => {:message => "no puede estar en blanco"}, :numericality => {:only_decimal => true, :message => "debe ser un valor numérico"}
  validates_numericality_of :cantidad, :greater_than => 0, :message => "no válida"
  validates :hh, :presence => {:message => "no puede estar en blanco"}, :numericality => {:only_decimal => true, :message => "debe ser un valor numérico"}
  validates_numericality_of :hh, :greater_than => 0, :message => "no válida"
end
