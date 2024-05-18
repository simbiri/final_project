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
  # Workspaces can be associated with many users through the UserWorkspace join table.
  # When a workspace is deleted, the reference to it in UserWorkspace is nullified instead of deleting the UserWorkspace record.
  has_many :users, class_name: "UserWorkspace", foreign_key: "workspace_id", dependent: :nullify
  
  # Workspaces can contain many messages, and deleting a workspace will delete all associated messages.
  has_many :messages, dependent: :destroy
  
  # A workspace has many members (users) through the UserWorkspace join table. 
  # This provides a direct way to access the users (members) of each workspace.
  has_many :members, through: :users, source: :member
end

