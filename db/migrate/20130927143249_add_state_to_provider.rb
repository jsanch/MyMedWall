class AddStateToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :state, :string
  end
end
