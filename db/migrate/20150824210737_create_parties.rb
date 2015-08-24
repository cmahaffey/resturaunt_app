class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_name
      t.integer :num_persons
      t.boolean :paid
      t.integer :server_id

    end
  end
end
