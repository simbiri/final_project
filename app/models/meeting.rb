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
end
