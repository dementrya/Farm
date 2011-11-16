class CreatePlants < ActiveRecord::Migration
  def change
    create_table :Plant do |t|
      t.integer :id
      t.string :pl_type
      t.integer :x
      t.integer :y
      t.integer :process_end

      t.timestamps
    end
  end
end
