class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :contents
      
      t.integer :bulettin_board_id

      t.timestamps
    end
  end
end
