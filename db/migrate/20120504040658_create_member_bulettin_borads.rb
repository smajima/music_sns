class CreateMemberBulettinBorads < ActiveRecord::Migration
  def change
    create_table :member_bulettin_borads do |t|
      t.string :name

      t.integer :band_id
      t.timestamps
    end
  end
end
