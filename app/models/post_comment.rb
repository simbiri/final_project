# == Schema Information
#
# Table name: post_comments
#
#  id           :integer          not null, primary key
#  comment_text :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_id      :integer
#  user_id      :integer
#
class PostComment < ApplicationRecord
  # This association links the comment to the user who made it. 
  # 'required: true' ensures that a comment cannot exist without being associated with a user.
  belongs_to :user, required: true
  
  # This association links the comment to the specific post it belongs to. 
  # 'required: true' enforces that every comment must be attached to a post
  belongs_to :post, required: true
end
