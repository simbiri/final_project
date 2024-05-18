# == Schema Information
#
# Table name: follow_requests
#
#  id                      :integer          not null, primary key
#  received_follow_request :integer
#  request_status          :string
#  sent_follow_request     :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
class FollowRequest < ApplicationRecord
  # This association links each follow request to a User who initiates the follow. This User is identified
  # by the 'user_following_list', which represents the list of users that the initiating user wants to follow.
  # The 'class_name: "User"' indicates that the associated object is a User, and the 'foreign_key: "sent_follow_request"'
  # points to the 'sent_follow_request' column in the follow_requests table, which holds the ID of the user who sent the request.
  belongs_to :user_following_list, class_name: "User", foreign_key: "sent_follow_request"
  
  # This association links each follow request to a User who receives the request. This User is identified
  # by the 'user_follower_list', which represents the list of users that the recipient user has followers from.
  # The 'class_name: "User"' specifies that the associated object is also a User, and the 'foreign_key: "received_follow_request"'
  # points to the 'received_follow_request' column, indicating the user who received the request.
  belongs_to :user_follower_list, class_name: "User", foreign_key: "received_follow_request"
end
