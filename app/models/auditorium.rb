class Auditorium < ActiveRecord::Base
  belongs_to :movie_theater
  has_many :seats
  has_many :movies
end
