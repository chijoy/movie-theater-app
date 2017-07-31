class CreateMovietheaters < ActiveRecord::Migration
  def change
    create_table :movietheaters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
