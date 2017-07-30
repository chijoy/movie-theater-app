class MovieTheater < ActiveRecord::Base
  has_many :auditoriums
  has_many :customers
end
