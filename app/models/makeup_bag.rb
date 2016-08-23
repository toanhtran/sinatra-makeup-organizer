class MakeupBag < ActiveRecord::Base
  has_many  :lipsticks
  belongs_to  :user

  def self.valid_params?(params)
    return !params[:name].empty?
  end
end
