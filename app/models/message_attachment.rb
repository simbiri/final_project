# == Schema Information
#
# Table name: message_attachments
#
#  id         :integer          not null, primary key
#  file_type  :string
#  file_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  message_id :integer
#
class MessageAttachment < ApplicationRecord
  # This association links each MessageAttachment to a specific Message. Using the 'counter_cache' option, 
  # Rails automatically updates an 'attachments_count' column in the messages table each time an attachment is
  # added or removed. This is useful for keeping track of how many attachments
  # a particular message has without needing to perform a separate database query to count them each time.
  belongs_to :message, counter_cache: :attachments_count
end
