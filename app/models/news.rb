# == Schema Information
#
# Table name: news
#
#  id                     :integer          not null, primary key
#  category               :string
#  news_attachments_count :integer
#  text_content           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  branch_id              :integer
#  featuring_user_id      :integer
#  journalist_id          :integer
#
class News < ApplicationRecord
end
