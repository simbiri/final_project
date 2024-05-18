# == Schema Information
#
# Table name: meeting_participants
#
#  id             :integer          not null, primary key
#  role           :string
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  meeting_id     :integer
#  participant_id :integer
#
class MeetingParticipant < ApplicationRecord
  # This association links each MeetingParticipant to a specific User, identified here as 'participant_invited'.
  # The 'class_name: "User"' specifies that the associated object is of the User model, 
  # and 'foreign_key: "participant_id"' points to the 'participant_id' column which holds the User's ID.
  # The 'required: true' ensures that each MeetingParticipant record must be associated with a User,
  belongs_to :participant_invited, class_name: "User", foreign_key: "participant_id", required: true
  
  # This association links each MeetingParticipant to a specific Meeting, identified here as 'meeting_invited'.
  # The 'class_name: "Meeting"' specifies that the associated object is of the Meeting model,
  # and 'foreign_key: "meeting_id"' points to the 'meeting_id' column which holds the Meeting's ID.
  # The 'required: true' ensures that each MeetingParticipant record must be associated with a Meeting,
  belongs_to :meeting_invited, class_name: "Meeting", foreign_key: "meeting_id", required: true
end
