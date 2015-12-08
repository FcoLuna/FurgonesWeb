class Worker < ActiveRecord::Base
  belongs_to :van
  validates :nombre, presence: true, length:{in:3..20,
        too_short:"demasiado corto",
        too_long:"demasiado largo"}
  validates :apellido, presence: true, length:{in:3..20,
        too_short:"demasiado corto",
        too_long:"demasiado largo"}
  validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalido"
  validates_format_of :apellido, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/,
                      :message => "Invalido"
  validates :tipo_trabajador, presence: true
  validates :sueldo, presence: true
  validates :apellido, presence: true
  validates :rut, rut: true
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "Formato no Valido EJ: 123.456.789-k"

  validates :rut, uniqueness: {case_sensitive: false ,message: "ya existe"}

end
