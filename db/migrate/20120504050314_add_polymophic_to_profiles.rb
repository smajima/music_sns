class AddPolymophicToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :prof_type, :string
    add_column :profiles, :prof_id, :integer
  end
end
