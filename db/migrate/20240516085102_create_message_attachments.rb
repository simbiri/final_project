class CreateMessageAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :message_attachments do |t|
      t.integer :message_id
      t.string :file_url
      t.string :file_type

      t.timestamps
    end
  end
end
