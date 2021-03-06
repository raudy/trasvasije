class Material < ActiveRecord::Base
	has_many :deliveries, :dependent => :nullify
	has_many :mat_prods, :dependent => :nullify
	validates :codigo, :presence => {:message => "no puede estar en blanco"}, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
	validates_numericality_of :codigo, :greater_than => 0, :message => "no válido"
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
end
