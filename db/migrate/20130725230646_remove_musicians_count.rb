class RemoveMusiciansCount < ActiveRecord::Migration
  def change
    remove_column :bands, :musicians
    remove_column :musicians, :email
  end
end
