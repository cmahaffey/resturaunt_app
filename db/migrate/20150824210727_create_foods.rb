class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :veg, default: false
      t.money :price
      t.timestamps
    end
  end
end
