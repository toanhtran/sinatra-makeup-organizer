class MakeupBag < ActiveRecord
  has_many  :lipsticks
  belongs_to  :user
end
