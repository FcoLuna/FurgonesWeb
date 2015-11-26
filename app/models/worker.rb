class Worker < ActiveRecord::Base
  belongs_to :van
  validates :apellido, presence: true
  validates :nombre, presence: true
  validates :tipo_trabajador, presence: true
  validates :sueldo, presence: true
  validates :apellido, presence: true
  validates_format_of :rut,
                      :with => /\A(\d{3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "Rut no Valido EJ: 123.456.789-k"
  
  validates :rut, uniqueness: {case_sensitive: false ,message: "El Rut ya existe"}
end
