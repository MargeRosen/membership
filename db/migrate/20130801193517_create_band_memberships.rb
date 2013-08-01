class CreateBandMemberships < ActiveRecord::Migration
  def change
    create_table :band_memberships do |t|
      t.date :start
      t.date :left
      t.references :musician, index: true
      t.references :band, index: true

      t.timestamps
    end
  end
end
