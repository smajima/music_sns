class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :explanation
      t.string :file_name
      t.integer :album_id
      t.timestamps
    end
  end
end
