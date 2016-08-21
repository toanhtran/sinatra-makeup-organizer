class AddBagIdToLipsticks < ActiveRecord::Migration
  def change
    add_column  :lipsticks, :makeupbag_id, :integer
  end
end
