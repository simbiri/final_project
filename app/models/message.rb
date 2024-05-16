# == Schema Information
#
# Table name: messages
#
#  id                :integer          not null, primary key
#  attachments_count :integer
#  text_content      :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  workspace_id      :integer
#
class Message < ApplicationRecord
end
