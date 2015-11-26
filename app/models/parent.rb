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
 validates :rut, rut: true
   validates :rut, uniqueness: {case_sensitive: false ,message: "El Rut ya existe"}
end
