class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :post, :user_id
  validates :post, length: {maximum: 500}
end
