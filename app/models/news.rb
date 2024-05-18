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
  # This association identifies the user who authored or reported the news. The 'class_name' is specified as "User"
  # and the 'foreign_key' used is "journalist_id", linking this model to the users table where the journalist's
  # user information is stored
  belongs_to :user, class_name: "User", foreign_key: "journalist_id"
  
  # This association links the news item to another user who is featured in the news. It is required,
  # meaning every news item must feature a user, which ensures that there is always a subject or focal
  # point in each news item. The 'class_name' is "User", and 'foreign_key' is "featuring_user_id".
  belongs_to :featured_user, class_name: "User", foreign_key: "featuring_user_id", required: true
  
  # News items can have multiple attachments, such as images or documents. The 'dependent: :destroy'
  # option ensures that deleting a news item will also delete all its associated attachments
  has_many :news_attachments, dependent: :destroy
end
