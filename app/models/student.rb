class Student < ActiveRecord::Base
  belongs_to :parent
  belongs_to :school
  belongs_to :van
end
