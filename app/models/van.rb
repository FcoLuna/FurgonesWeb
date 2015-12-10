class Van < ActiveRecord::Base
	has_many :workers, dependent: :nullify
	has_many :students, dependent: :nullify
	validates :capacidad, presence: true
  validates :patente, presence: true
  validates :patente, uniqueness: {case_sensitive: false ,message: "ya existe"}
    validates_numericality_of :capacidad, greater_than: 9,
                            :message => "Debe ser mayor o igual a 10"
  validates_numericality_of :capacidad,less_than_or_equal_to:30,
                            :message => "Parece ser muy grande"
  validates_format_of :patente,
                      :with => /\A[A-Z]{2}[-][0-9]{2}[-][0-9]{2}|[B-D,F-H,J-L,P,R-T,V-Z]{2}[-][B-D,F-H,J-L,P,R-T,V-Z]{2}[-][0-9]{2}\Z/,
                      :message => "Formato no Valido"

end
