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
end
