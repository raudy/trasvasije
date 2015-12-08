class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :details, :dependent => :nullify
  validates :codigo, :presence => {:message => "no puede estar en blanco"}, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
  validates_numericality_of :codigo, :greater_than => 0, :message => "no válido"
  validates :neto, :presence => {:message => "no puede estar en blanco"}, :numericality => {:only_decimal => true, :message => "debe ser un valor numérico"}
  validates_numericality_of :neto, :greater_than => 0, :message => "no válido"
  validates :bruto, :presence => {:message => "no puede estar en blanco"}, :numericality => {:only_decimal => true, :message => "debe ser un valor numérico"}
  validates_numericality_of :bruto, :greater_than => 0, :message => "no válido"
end