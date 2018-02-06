class CreateFridges < ActiveRecord::Migration[5.1]
  def change
    create_table :fridges do |t|
      t.string :brand
      t.string :location
      t.float :size
      t.boolean :has_food
      t.boolean :has_drink

      t.timestamps
    end
  end
end
