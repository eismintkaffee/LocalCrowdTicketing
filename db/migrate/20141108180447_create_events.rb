class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.text   :description
      t.float  :Price
      t.string :thumburl
      t.references :category
      t.timestamps
    end
  end
end
