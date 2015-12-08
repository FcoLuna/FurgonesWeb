class School < ActiveRecord::Base
	has_many :students, dependent: :nullify
	validates :nombre, presence: true
  validates :direccion, presence: true
  validates :comuna, presence: true
  validates :telefono, length: { in:8..8 , message: "ingrese un número correcto ejemplo 12345678"}
 
  validates_format_of :comuna, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalida"
  
  validates_format_of :direccion, :with => /\A[^0-9`!@#\$%\^&*+_=]+\ \#(\d{1,6})\z/i,
                      :message => "Invalida EJ: Pasaje Ejemplo #1234"

  validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalido"
end
