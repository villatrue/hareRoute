class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.text :name
      t.integer :user_id
      t.boolean :is_optimized

      t.timestamps
    end
  end
end
