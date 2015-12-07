class Customer < ActiveRecord::Base
	validates :rut, :presence => {:message => "no puede estar en blanco"}, uniqueness: {case_sensitive: false ,message: "ya está registrado"}
	validates_format_of :rut, :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i, :message => "no válido (Ej: 12.345.678-k)"
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates :direccion, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corta", too_long: "demasiado larga"}
	validates :fono, :presence => {:message => "no puede estar en blanco"}, length: {in:8..11, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates_numericality_of :fono, :greater_than => 0, :message => "no válido"
end