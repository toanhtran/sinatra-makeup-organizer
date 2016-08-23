class Lipstick < ActiveRecord::Base
  belongs_to  :makeup_bag

  def self.valid_params?(params)
    return !params[:shade].empty? && !params[:brand].empty?
  end

end
