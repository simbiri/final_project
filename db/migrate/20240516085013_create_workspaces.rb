class CreateWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workspaces do |t|
      t.string :image_url
      t.string :title
      t.text :short_description
      t.integer :users_count
      t.integer :messages_count

      t.timestamps
    end
  end
end
