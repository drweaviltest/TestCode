class User < ActiveRecord::Base
  has_many :microposts
  attr_accessible :name, :password, :email, :password_confirmation
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, uniqueness: true
  validates :password, confirmation: true
end
