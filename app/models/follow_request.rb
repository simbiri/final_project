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
end
