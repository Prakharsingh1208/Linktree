class RenameUserDetailToUserdetail < ActiveRecord::Migration[8.0]
  def change
    rename_table :user_details, :userdetails
  end
end
