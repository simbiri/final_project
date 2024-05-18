# == Schema Information
#
# Table name: user_workspaces
#
#  id           :integer          not null, primary key
#  role         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  workspace_id :integer
#
class UserWorkspace < ApplicationRecord
  # This association indicates that each UserWorkspace record belongs to a User, referred to as 'member' in this context.
  # The 'foreign_key' is set to 'user_id' to link the UserWorkspace records directly to the User table.
  belongs_to :member, class_name: "User", foreign_key: "user_id"
  
  # This association establishes that each UserWorkspace record is linked to one Workspace.
  # It reflects the membership of a user within a particular workspace, facilitating access to workspace details from a user's perspective.
  belongs_to :workspace
end

