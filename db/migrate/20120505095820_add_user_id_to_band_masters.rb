class AddUserIdToBandMasters < ActiveRecord::Migration
  def change
    add_column :band_masters, :user_id, :integer
  end
end
