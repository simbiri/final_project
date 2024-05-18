# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  user_id    :integer
#
class Like < ApplicationRecord
  # This association specifies that each Like is made by a User. The 'required: true' condition ensures that
  # a Like cannot exist without being linked to a User, establishing accountability and a clear user action.
  # This is essential for tracking likes, preventing duplicate likes, and allowing users to unlike posts.
  belongs_to :user, required: true
  
  # This association indicates that each Like is associated with a specific Post. The 'required: true' condition
  # ensures that every Like must be linked to a Post. This is vital for maintaining the relationship between likes
  # and posts, ensuring that likes cannot exist without a corresponding post,
  belongs_to :post, required: true
end
