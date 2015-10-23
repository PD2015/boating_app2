class RemoveUserIdFromBoats < ActiveRecord::Migration
  def change
    remove_column :boats, :user_id, :integer
  end
end
