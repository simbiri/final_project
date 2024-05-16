class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title_task
      t.text :description
      t.datetime :task_due
      t.integer :assigned_by_id
      t.integer :assigned_to_id
      t.string :status
      t.integer :branch_id

      t.timestamps
    end
  end
end
