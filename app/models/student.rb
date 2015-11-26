class Student < ActiveRecord::Base
  belongs_to :parent
  belongs_to :school
  belongs_to :van
  validates :nombre, presence: true, length:{in:3..20,
  			too_short:"demasiado corto",
  			too_long:"demasiado largo"}
  validates :apellido, presence: true, length:{in:3..20,
  			too_short:"demasiado corto",
  			too_long:"demasiado largo"}
  validates :rut, rut: true
  validates :rut, uniqueness: {case_sensitive: false ,message: "ya existe"}
end
