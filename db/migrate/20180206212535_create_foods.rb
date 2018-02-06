class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :weight
      t.boolean :is_vegan
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
