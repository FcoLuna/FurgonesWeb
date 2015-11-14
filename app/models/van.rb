class Van < ActiveRecord::Base
	has_many :workers
	has_many :students
end
