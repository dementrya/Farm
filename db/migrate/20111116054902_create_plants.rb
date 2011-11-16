class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :plant_type
      t.integer :id
      t.integer :x
      t.integer :y
      t.integer :process_end

      t.timestamps
    end
  end
end
