class AddStreetNameToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :street_name, :string
  end
end
