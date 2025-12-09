class CreateTrees < ActiveRecord::Migration[8.0]
  def change
    create_table :trees do |t|
      t.string :x
      t.string :youtube
      t.string :linkedin
      t.string :facebook
      t.string :whatsapp
      t.string :github
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
