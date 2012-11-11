class CreateBulettinBoards < ActiveRecord::Migration
  def change
    create_table :bulettin_boards do |t|
      t.string :name
      
      t.integer :band_id

      t.timestamps
    end
  end
end
