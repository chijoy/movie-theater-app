class User < ActiveRecord::Base
  belongs_to :movietheater
  has_many :tickets
  has_many :orders

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :phone, presence: true
  validates :birthdate, presence: true
  validates :password, presence: true, on: :create
end
