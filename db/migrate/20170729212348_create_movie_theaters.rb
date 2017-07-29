class CreateMovieTheaters < ActiveRecord::Migration
  def change
    create_table :movie_theaters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
