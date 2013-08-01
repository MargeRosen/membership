class DropBandMembership < ActiveRecord::Migration
  def change
    def up
      drop_table :band_membership
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
