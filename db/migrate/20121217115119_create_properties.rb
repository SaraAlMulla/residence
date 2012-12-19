class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :number_of_rooms
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.boolean :parking_allotment
      t.boolean :internet_included
      t.string :street_address
      t.string :property_type
      t.integer :owner_id
      t.integer :manager_id
      t.integer :price_per_period
      t.string :period_type
      t.text :purpose
      t.string :owner_name

      t.timestamps
    end
  end
end
