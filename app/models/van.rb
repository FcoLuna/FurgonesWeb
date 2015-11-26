class Van < ActiveRecord::Base
	has_many :workers
	has_many :students
	validates :capacidad, presence: true
  validates :patente, presence: true
  validates :patente, uniqueness: {case_sensitive: false ,message: "La patente ya existe"}
end
