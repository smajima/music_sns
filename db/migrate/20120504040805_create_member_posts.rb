class CreateMemberPosts < ActiveRecord::Migration
  def change
    create_table :member_posts do |t|
      t.string :title
      t.text :contents
      
      t.integer :memeber_bulletin_board_id

      t.timestamps
    end
  end
end
