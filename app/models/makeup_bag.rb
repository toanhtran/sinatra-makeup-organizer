class MakeupBag < ActiveRecord::Base
  has_many  :lipsticks
  belongs_to  :user
end
