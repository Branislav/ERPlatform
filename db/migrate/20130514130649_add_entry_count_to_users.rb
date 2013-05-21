class AddEntryCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :entrycount, :integer
  end
end
