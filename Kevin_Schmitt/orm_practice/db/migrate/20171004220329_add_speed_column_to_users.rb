class AddSpeedColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :speed, :integer
  end
end
