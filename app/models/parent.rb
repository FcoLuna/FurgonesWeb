class Parent < ActiveRecord::Base
  has_many :stundents
  validates :nombre, presence:true
  validates :apellido, presence: true
  validates :pago, presence: true
  validates :telefono, length: { in:8..8 , message: "ingrese un número correcto ejemplo 123456789"}
end
