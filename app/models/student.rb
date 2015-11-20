class Student < ActiveRecord::Base
  belongs_to :parent,dependent: :destroy
  belongs_to :school
  belongs_to :van
end
