class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :text_content
      t.integer :journalist_id
      t.integer :featuring_user_id
      t.string :category
      t.integer :branch_id
      t.integer :news_attachments_count

      t.timestamps
    end
  end
end
