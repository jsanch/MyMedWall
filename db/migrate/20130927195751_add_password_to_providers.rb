class AddPasswordToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :password, :string
  end
end
