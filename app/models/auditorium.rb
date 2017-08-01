class Auditorium < ActiveRecord::Base
  belongs_to :movietheater
  has_many :seats
  has_many :movies
end
