class Movietheater < ActiveRecord::Base
  has_many :auditoriums
  has_many :customers
  has_many :users
end
