class CreateStartupProfiles < ActiveRecord::Migration
  def change
    create_table :startup_profiles do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
