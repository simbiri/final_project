class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :workspace_id
      t.text :text_content
      t.integer :attachments_count

      t.timestamps
    end
  end
end
