class Movie < ActiveRecord::Base
  belongs_to :auditorium
  has_many :showtimes
  has_many :customers
end
