class RemoveLocationFromAir < ActiveRecord::Migration
  def change
    remove_column :airs, :location, :string
  end
end
