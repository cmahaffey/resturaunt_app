class UpdateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :party_id
      t.integer :food_id
      t.integer :chef_id
      t.text :description
      t.boolean :prepared
      t.timestamps :integer
    end
  end
end
