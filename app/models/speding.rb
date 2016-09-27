class Speding < ActiveRecord::Base
  belongs_to :van
  validates :monto, presence: true
  validates :nombre, presence: true
  validates_numericality_of :monto, greater_than_or_equal_to: 0,
                            :message => "Debe ser positivo"
  validates_numericality_of :monto,less_than_or_equal_to:9999999,
                            :message => "Parece ser muy grande"
end
