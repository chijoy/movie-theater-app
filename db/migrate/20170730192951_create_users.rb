class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :movie_id
      t.integer :movietheater_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.boolean :text_option
      t.datetime :birthdate
      t.string :password_digest
      t.string :type

      t.timestamps null: false
    end
  end
end
