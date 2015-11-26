class Van < ActiveRecord::Base
	has_many :workers, dependent: :nullify
	has_many :students, dependent: :nullify
	validates :capacidad, presence: true
  validates :patente, presence: true
  validates :patente, uniqueness: {case_sensitive: false ,message: "La patente ya existe"}
end
