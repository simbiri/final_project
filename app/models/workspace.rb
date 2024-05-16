# == Schema Information
#
# Table name: workspaces
#
#  id                :integer          not null, primary key
#  image_url         :string
#  messages_count    :integer
#  short_description :text
#  title             :string
#  users_count       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Workspace < ApplicationRecord
end
