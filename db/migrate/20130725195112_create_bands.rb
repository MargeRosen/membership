class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :bandname, "Band Name"
      t.string :genre
      t.text :about
      t.string :website

      t.timestamps
    end
  end
end
