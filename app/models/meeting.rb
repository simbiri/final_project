# == Schema Information
#
# Table name: meetings
#
#  id             :integer          not null, primary key
#  description    :text
#  end_time       :datetime
#  is_event       :boolean
#  is_private     :boolean
#  is_virtual     :boolean
#  meeting_url    :string
#  start_time     :datetime
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  chairperson_id :integer
#
class Meeting < ApplicationRecord
  # This association identifies the user who chairs the meeting. The 'class_name' is specified as "User"
  # and the 'foreign_key' used is "chairperson_id", linking this model to the users table where the chairperson's
  # user information is stored. The 'required: true' condition ensures that each meeting must have a designated
  # chairperson
  belongs_to :chairperson, class_name: "User", foreign_key: "chairperson_id", required: true
  
  # Meetings can have multiple participants, managed through the MeetingParticipant model. The 'dependent: :destroy'
  # option ensures that all participant records are deleted if the meeting is deleted
  has_many :meeting_participants, dependent: :destroy
  
  # This association provides a way to access all the users who are participants in the meeting.
  # It utilizes the 'meeting_participants' association to reach the 'User' model, indicating a list of participants
  # who have been invited to each meeting. The 'source: :participant_invited' specifies that the 'participant_invited'
  # method in the MeetingParticipant model should be used to fetch the 'User' records.
  has_many :participants, through: :meeting_participants, source: :participant_invited
end
