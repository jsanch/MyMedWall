class RemoveLocations < ActiveRecord::Migration
  def up
    drop_table :locations
  end

  def down
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :street_number
      t.string :street_name
      t.integer :zipcode
      t.string :country
      t.integer :provider_id

      t.timestamps
    end
  end
end
