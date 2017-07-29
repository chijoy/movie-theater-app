class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :auditorium_id
      t.string :title
      t.string :rating
      t.string :female_lead
      t.string :male_lead
      t.integer :year_released
      t.integer :run_time

      t.timestamps null: false
    end
  end
end
