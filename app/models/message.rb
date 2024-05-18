# == Schema Information
#
# Table name: messages
#
#  id                :integer          not null, primary key
#  attachments_count :integer
#  text_content      :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  workspace_id      :integer
#
# Indexes
#
#  index_messages_on_user_id  (user_id)
#
class Message < ApplicationRecord
  # This association links each message to a specific workspace, establishing a context for the message.
  belongs_to :workspace
  #This association helps us recognize who authored the message in a workspace
  belongs_to :user

  # Messages can have multiple attachments, such as files, images, or other media.
  # The 'dependent: :destroy' option ensures that when a message is deleted, all of its attachments are also deleted.
  has_many :attachments, class_name: "MessageAttachment", dependent: :destroy
end
