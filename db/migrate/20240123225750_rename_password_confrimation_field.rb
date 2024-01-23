class RenamePasswordConfrimationField < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :passowrd_confirmation, :password_confirmation
  end
end
