class CreateMeetingParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :meeting_participants do |t|
      t.integer :meeting_id
      t.integer :participant_id
      t.string :status
      t.string :role

      t.timestamps
    end
  end
end
