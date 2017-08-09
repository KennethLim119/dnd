class AddLocationToAir < ActiveRecord::Migration
  def change
    add_column :airs, :location, :text
  end
end
