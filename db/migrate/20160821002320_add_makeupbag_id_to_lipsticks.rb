class AddMakeupbagIdToLipsticks < ActiveRecord::Migration
  def change
    add_column  :makeup_bags, :makeupbag_id, :integer
  end
end
