class CreateUserDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :user_details do |t|
      t.string :user_name
      t.string :bio
      t.string :profile_pic
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
