class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
