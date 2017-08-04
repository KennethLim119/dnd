class CreateAirs < ActiveRecord::Migration
  def change
    create_table :airs do |t|
      t.integer :room_id
      t.string :room_name
      t.string :location
      t.text :description
      t.integer :price
      t.integer :accomodation
      t.integer :bathrooms
      t.integer :bedrooms
      t.integer :beds
      t.string :room_type
      t.boolean :is_TV
      t.boolean :is_Air_Conditioning
      t.boolean :is_Laptop_friendly_workspace
      t.boolean :is_Washer
      t.boolean :is_Kitchen
      t.boolean :is_WiFi
      t.boolean :is_Family_friendly
      t.boolean :is_Pool
      t.boolean :is_Gym
      t.boolean :is_Wheelchair_accessible
      t.boolean :is_Pets_allowed
      t.text :house_rules

      t.timestamps null: false
    end
  end
end
