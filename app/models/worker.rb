class Worker < ActiveRecord::Base
  belongs_to :van
  belongs_to :user, dependent: :destroy
  validates :apellido, presence: true
  validates :nombre, presence: true
  validates :tipo_trabajador, presence: true
  validates :sueldo, presence: true
  validates :apellido, presence: true
  validates :jornada, presence: true
end
