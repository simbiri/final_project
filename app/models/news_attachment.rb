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
end
