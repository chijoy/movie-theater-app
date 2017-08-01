class ChangeColumnInShowtimes < ActiveRecord::Migration
  def change
    rename_column :showtimes, :start_show_time, :start_show_date
    rename_column :showtimes, :end_show_time, :end_show_date
  end
end
