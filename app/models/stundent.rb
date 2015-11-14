class Stundent < ActiveRecord::Base
  belongs_to :parent
  belongs_to :van
  belongs_to :school
end
