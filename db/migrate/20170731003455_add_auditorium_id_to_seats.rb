class AddAuditoriumIdToSeats < ActiveRecord::Migration
  def change
    add_column :seats, :auditorium_id, :integer
  end
end
