class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
