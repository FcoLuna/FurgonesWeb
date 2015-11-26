class Worker < ActiveRecord::Base
  belongs_to :van
  validates :nombre, presence: true, length:{in:3..20,
        too_short:"demasiado corto",
        too_long:"demasiado largo"}
  validates :apellido, presence: true, length:{in:3..20,
        too_short:"demasiado corto",
        too_long:"demasiado largo"}
  validates :tipo_trabajador, presence: true
  validates :sueldo, presence: true
  validates :apellido, presence: true
  validates :rut, rut: true

  validates :rut, uniqueness: {case_sensitive: false ,message: "ya existe"}

end
