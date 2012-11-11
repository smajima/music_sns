class AddReferenceToBandMembers < ActiveRecord::Migration
  def change
    add_column :band_members, :band_id, :integer
  end
end
