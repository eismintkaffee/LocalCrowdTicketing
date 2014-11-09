class CreatePtickets < ActiveRecord::Migration
  def change
    create_table :ptickets do |t|
    	t.string :eventName
    	t.integer :quantity

      t.timestamps
    end
  end
end
