# == Schema Information
#
# Table name: news_attachments
#
#  id         :integer          not null, primary key
#  file_url   :string
#  filetype   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  news_id    :integer
#
class NewsAttachment < ApplicationRecord
  # This association links each NewsAttachment directly to a specific News item. 
  # The 'counter_cache: :news_attachments_count' option is used to maintain a count of how many attachments 
  belongs_to :news, counter_cache: :news_attachments_count
end
