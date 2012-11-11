class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|

      t.integer :user_id
      t.integer :profile_id
      t.timestamps
    end
  end
end
