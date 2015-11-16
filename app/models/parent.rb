class Parent < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :students
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :pago, presence: true
  validates :telefono, length: { in:8..8 , message: "ingrese un número correcto ejemplo 123456789"}
end
