class Worker < ActiveRecord::Base
  belongs_to :van
  belongs_to :user
end
