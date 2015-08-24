class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :veg
      t.money :price
      
    end
  end
end
