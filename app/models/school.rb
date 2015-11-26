class School < ActiveRecord::Base
	has_many :students
	validates :nombre, presence: true
  validates :direccion, presence: true
  validates :comuna, presence: true
  validates :telefono, length: { in:8..8 , message: "ingrese un número correcto ejemplo 12345678"}
end
