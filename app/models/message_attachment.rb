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
end
