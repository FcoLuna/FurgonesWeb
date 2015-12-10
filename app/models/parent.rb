class Parent < ActiveRecord::Base
  has_many :students, dependent: :destroy
  validates :nombre, presence: true, length:{in:3..20,
  			too_short:"demasiado corto",
  			too_long:"demasiado largo"}
  validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalido"
  validates_format_of :apellido, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalido"
  validates :apellido, presence: true, length:{in:3..20,
  			too_short:"demasiado corto",
  			too_long:"demasiado largo"}
  validates :pago, presence: true
  validates :telefono, length: { in:7..8 , message: ": ingrese un número correcto ejemplo 12345678"}
  validates :rut, rut: true
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "Formato no Valido EJ: 123.456.789-k"
  validates :rut, uniqueness: {case_sensitive: false ,message: "El Rut ya existe"}
  validates_numericality_of :pago, greater_than_or_equal_to: 0,
                            :message => "Debe ser positivo"
  validates_numericality_of :pago,less_than_or_equal_to:100000,
                            :message => "Parece ser muy grande"
end
