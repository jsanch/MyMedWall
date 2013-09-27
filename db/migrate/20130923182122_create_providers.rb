class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :specialty
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :hospital_affiliation
      t.string :phone_number
      t.string :flavor

      t.timestamps
    end
  end
end
