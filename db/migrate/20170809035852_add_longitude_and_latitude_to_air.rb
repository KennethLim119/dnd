class AddLongitudeAndLatitudeToAir < ActiveRecord::Migration
  def change
    add_column :airs, :longitude, :float
    add_column :airs, :latitude, :float
  end
end
