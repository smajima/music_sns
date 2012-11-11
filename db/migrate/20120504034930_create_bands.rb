class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :explanation
      t.string :type

      t.timestamps
    end
  end
end
