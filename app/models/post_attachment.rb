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
  # This association establishes that each PostAttachment belongs to a specific Post.
  # It is crucial for maintaining the relationship where attachments are directly linked to the post they enhance or provide additional information for.
  belongs_to :post
end

