class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal, :precision => 8, :scale => 2
    add_column :orders, :tax, :decimal, :precision => 8, :scale => 2
    add_column :orders, :total, :decimal, :precision => 8, :scale => 2
  end
end
