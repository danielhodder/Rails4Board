class User < ActiveRecord::Base
  attr_accessible :username, :password
  has_secure_password

  has_many :topics, inverse_of: :created_by_user
end