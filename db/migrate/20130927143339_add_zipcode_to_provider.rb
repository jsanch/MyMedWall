class AddZipcodeToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :zipcode, :string
  end
end
