class AddStreetNumberToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :street_number, :string
  end
end
