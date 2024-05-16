class CreateNewsAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :news_attachments do |t|
      t.integer :news_id
      t.string :file_url
      t.string :filetype

      t.timestamps
    end
  end
end
