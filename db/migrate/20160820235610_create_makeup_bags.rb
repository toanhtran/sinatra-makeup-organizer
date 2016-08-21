class CreateMakeupBags < ActiveRecord::Migration
  def change
    create_table  :makeup_bags do |t|
      t.string  :name
    end
  end
end
