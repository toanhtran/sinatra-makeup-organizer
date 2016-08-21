class CreateLipsticks < ActiveRecord::Migration
  def change
    create_table  :lipsticks do |t|
      t.string  :shade
      t.string  :brand
    end
  end
end
