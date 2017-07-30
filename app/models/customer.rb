class Customer < ActiveRecord::Base
  belongs_to :movie
  belongs_to :movietheater
  has_many :tickets
end
