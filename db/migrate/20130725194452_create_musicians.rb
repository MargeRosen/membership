class CreateMusicians < ActiveRecord::Migration
  def change
    create_table (:musicians) do |t|
      t.string :name
      t.string :instrument
      t.string :genre
      t.text :about

      t.timestamps
    end
  end
end
