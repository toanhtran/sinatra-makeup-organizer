class AddUserIdToMakeupBags < ActiveRecord::Migration
  def change
    add_column  :makeup_bags, :user_id, :integer
  end
end
