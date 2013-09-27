class AddCountryToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :country, :string
  end
end
