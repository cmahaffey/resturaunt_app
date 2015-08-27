class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.name
      t.timestamps
    end
  end
end
