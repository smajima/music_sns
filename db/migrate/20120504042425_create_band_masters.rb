class CreateBandMasters < ActiveRecord::Migration
  def change
    create_table :band_masters do |t|
     
      t.integer :profile_id
      t.timestamps
    end
  end
end
