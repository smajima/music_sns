class AddBandMasteerIdToBand < ActiveRecord::Migration
  def change
    add_column :bands, :band_master_id, :integer
  end
end
