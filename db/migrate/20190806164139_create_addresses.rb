class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :name
      t.string :address
      t.integer :zipcode
      t.float :latitude
      t.float :longitude
      t.integer :sorted_index
      t.integer :optimal_index
      t.boolean :first
      t.boolean :last
      t.integer :route_id

      t.timestamps
    end
  end
end
