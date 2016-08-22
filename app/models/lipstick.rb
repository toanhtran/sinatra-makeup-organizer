class Lipstick < ActiveRecord::Base
  belongs_to  :makeup_bag

  def self.valid_params?(params)
    return!params[:name].empty? && !params[:brand].empty?
  end

end
