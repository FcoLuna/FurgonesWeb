class Stundent < ActiveRecord::Base
  belongs_to :parent
  belongs_to :van
  belongs_to :school
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :jornada, presence: true
  validates :direccion, presence: true
  validates :comuna, presence: true
  validates :van_id, presence: true
  validates :school_id { |match|  }, presence: true
end
