class Topic < ActiveRecord::Base
  attr_accessible :name

  belongs_to :created_by_user, class_name: :user, inverse_of: :topics

  has_many :comments, inverse_of: :topic
end