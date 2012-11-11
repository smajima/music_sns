class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nick_name
      t.string :gender
      t.date :birthday
      t.text :introduction

      t.timestamps
    end
  end
end
