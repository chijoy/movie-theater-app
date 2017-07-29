class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :start_show_time
      t.datetime :end_show_time

      t.timestamps null: false
    end
  end
end
