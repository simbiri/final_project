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
end
