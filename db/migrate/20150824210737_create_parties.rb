class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :table_name
      t.integer :num_persons
      t.boolean :paid
      t.integer :server_id
      t.timestamps
    end
  end
end
