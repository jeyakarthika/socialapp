class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :phone
      t.string :picture
      t.string :linkedin
      t.references :user, index: true

      t.timestamps
    end
  end
end
