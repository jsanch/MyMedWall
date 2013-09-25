class ChangeZipcodeFromIntegerToString < ActiveRecord::Migration
  def up
    change_column :locations, :zipcode, :string
  end

  def down
    change_column :locations, :zipcode, :integer
  end
end
