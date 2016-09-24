class Pay < ActiveRecord::Base
belongs_to :parent

validates :mes, presence: true
validates :monto, presence: true
validates_numericality_of :monto, greater_than_or_equal_to: 0,
                          :message => "Debe ser positivo"
validates_numericality_of :monto,less_than_or_equal_to:100000,
                          :message => "Parece ser muy grande"
validates :keyword, presence: true
end
