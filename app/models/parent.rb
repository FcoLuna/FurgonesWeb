class Parent < ActiveRecord::Base
  has_many :students, dependent: :destroy
  validates :nombre, presence: true, length:{in:3..20, 
  			too_short:"demasiado corto", 
  			too_long:"demasiado largo"}
  validates :apellido, presence: true, length:{in:3..20, 
  			too_short:"demasiado corto", 
  			too_long:"demasiado largo"}
  validates :pago, presence: true
  validates :telefono, length: { in:8..8 , message: ": ingrese un número correcto ejemplo 12345678"}
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "no Valido EJ: 123.456.789-k"
   validates :rut, uniqueness: {case_sensitive: false ,message: "El Rut ya existe"}
end
