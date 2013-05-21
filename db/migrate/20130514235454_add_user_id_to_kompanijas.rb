class AddUserIdToKompanijas < ActiveRecord::Migration
  def change
    add_column :kompanijas, :user_id , :integer
  end
end
