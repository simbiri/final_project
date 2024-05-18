# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Post < ApplicationRecord
  # Each post is created by a user. This establishes an ownership link between the post and a user.
  belongs_to :user
  
  # Posts can have many comments. This association allows access to all comments related to this post.
  # 'dependent: :destroy' ensures that all comments are deleted if the post is deleted, maintaining data integrity.
  has_many :comments, class_name: "PostComment", dependent: :destroy
  
  # Posts can receive many likes. Similar to comments, likes are also deleted when the post is deleted.
  has_many :likes, dependent: :destroy
  
  # Posts can have multiple attachments (e.g., images, documents). These are also deleted when the post is deleted.
  has_many :post_attachments, dependent: :destroy

  # This association provides a way to access all users who have liked the post.
  # It uses the 'likes' association to reach the 'user' model, showing a list of users who liked each post.
  has_many :users_liking, through: :likes, source: :user
end

