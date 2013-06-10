class Comment < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :topic, inverse_of: :comments, touch: true
  belongs_to :created_by_user, class_name: :user, inverse_of: :comments
end