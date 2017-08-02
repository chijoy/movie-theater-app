class RemoveMovieIdInUsers < ActiveRecord::Migration
  def change
    remove_column :users, :movie_id, :integer
  end
end
