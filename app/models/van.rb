class Van < ActiveRecord::Base
	has_many :workers,dependent: :destroy
	has_many :students
	validates :capacidad, presence: true
  validates :patente, presence: true
end
