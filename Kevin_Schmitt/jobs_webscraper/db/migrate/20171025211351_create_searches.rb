class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
