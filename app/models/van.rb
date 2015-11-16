class Van < ActiveRecord::Base
	has_many :workers
	has_many :students
	validates :capacidad, presence: true
  validates :patente, presence: true
end
