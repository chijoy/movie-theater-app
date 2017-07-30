class User < ActiveRecord::Base
  belongs_to :movie
  belongs_to :movietheater
  has_many :tickets

  has_secure_password
end
