class Attendance < ActiveRecord::Migration[8.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id, null: false
    end
  end
end
