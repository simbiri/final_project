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
  # This association links each task to a User who assigned it, termed here as 'assignment_owner'.
  # The 'foreign_key: "assigned_by_id"' specifically points to the 'assigned_by_id' column in the tasks table,
  # which holds the identifier of the User who created or assigned the task.
  # The 'required: true' enforces that a task must always have an assigning owner
  belongs_to :assignment_owner, class_name: "User", foreign_key: "assigned_by_id", required: true
  
  # Similar to the 'assignment_owner', this association connects each task to the User who is supposed to execute it, referred to as 'assignee'.
  # The 'foreign_key: "assigned_to_id"' points to the 'assigned_to_id' column, indicating the User responsible for completing the task.
  # The 'required: true' condition ensures that every task must be associated with an assignee
  belongs_to :assignee, class_name: "User", foreign_key: "assigned_to_id", required: true
end
