class RenameUserModel < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :authors
  end
end