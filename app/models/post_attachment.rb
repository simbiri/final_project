# == Schema Information
#
# Table name: post_attachments
#
#  id         :integer          not null, primary key
#  file_type  :string
#  file_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#
class PostAttachment < ApplicationRecord
end
