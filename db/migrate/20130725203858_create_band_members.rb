class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_membership do |t|
      t.date :start
      t.date :left
      t.references :musician, index: true
      t.references :band, index: true

      t.timestamps
    end
  end
end
