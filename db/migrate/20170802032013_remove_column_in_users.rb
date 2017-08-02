class RemoveColumnInUsers < ActiveRecord::Migration
  def change
    remove_column :users, :text_option, :boolean
  end
end
