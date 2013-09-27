class AddCityToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :city, :string
  end
end
