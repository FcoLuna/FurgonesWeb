class Salary < ActiveRecord::Base
  belongs_to :worker
  validates :mes, presence: true
  validates :monto, presence: true
  validates_numericality_of :monto, greater_than_or_equal_to: 0,
                            :message => "Debe ser positivo"
  validates_numericality_of :monto,less_than_or_equal_to:999999,
                            :message => "Parece ser muy grande"
end
