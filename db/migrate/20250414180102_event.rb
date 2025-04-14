class Event < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.datetime :start_time, null: false
      t.integer :duration, null: false
      t.string :title, null: false
      t.text :description
      t.integer :price, null: false
      t.string :location
      
      t.timestamps
    end
  end
end
