class CreateUserWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :user_workspaces do |t|
      t.integer :user_id
      t.integer :workspace_id
      t.string :role

      t.timestamps
    end
  end
end
