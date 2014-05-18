class CreateUserStartupProfiles < ActiveRecord::Migration
  def change
    create_table :user_startup_profiles do |t|
      t.references :user, index: true
      t.references :startup_profile, index: true

      t.timestamps
    end
  end
end
