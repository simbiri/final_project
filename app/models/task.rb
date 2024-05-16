# == Schema Information
#
# Table name: tasks
#
#  id             :integer          not null, primary key
#  description    :text
#  status         :string
#  task_due       :datetime
#  title_task     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  assigned_by_id :integer
#  assigned_to_id :integer
#  branch_id      :integer
#
class Task < ApplicationRecord
end
