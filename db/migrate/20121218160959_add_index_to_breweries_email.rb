class AddIndexToBreweriesEmail < ActiveRecord::Migration
  def change
    add_index :breweries, :email, unique: true
  end
end
