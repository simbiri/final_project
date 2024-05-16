class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :meeting_url
      t.text :description
      t.boolean :is_virtual
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.integer :chairperson_id
      t.boolean :is_private
      t.boolean :is_event

      t.timestamps
    end
  end
end
