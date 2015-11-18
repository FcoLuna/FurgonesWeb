class Worker < ActiveRecord::Base
  belongs_to :van
  validates :apellido, presence: true
  validates :nombre, presence: true
  validates :tipo_trabajador, presence: true
  validates :sueldo, presence: true
  validates :apellido, presence: true
  validates :jornada, presence: true
end
