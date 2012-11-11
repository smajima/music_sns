class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :contents

      t.integer :band_id
      t.timestamps
    end
  end
end
