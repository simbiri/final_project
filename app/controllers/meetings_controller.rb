class MeetingsController < ApplicationController
  def index
    matching_meetings = Meeting.all

    @list_of_meetings = matching_meetings.order({ :created_at => :desc })

    render({ :template => "meetings/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_meetings = Meeting.where({ :id => the_id })

    @the_meeting = matching_meetings.at(0)

    render({ :template => "meetings/show" })
  end

  def create
    the_meeting = Meeting.new
    the_meeting.meeting_url = params.fetch("query_meeting_url")
    the_meeting.description = params.fetch("query_description")
    the_meeting.is_virtual = params.fetch("query_is_virtual", false)
    the_meeting.title = params.fetch("query_title")
    the_meeting.start_time = params.fetch("query_start_time")
    the_meeting.end_time = params.fetch("query_end_time")
    the_meeting.chairperson_id = params.fetch("query_chairperson_id")
    the_meeting.is_private = params.fetch("query_is_private", false)
    the_meeting.is_event = params.fetch("query_is_event", false)

    if the_meeting.valid?
      the_meeting.save
      redirect_to("/meetings", { :notice => "Meeting created successfully." })
    else
      redirect_to("/meetings", { :alert => the_meeting.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_meeting = Meeting.where({ :id => the_id }).at(0)

    the_meeting.meeting_url = params.fetch("query_meeting_url")
    the_meeting.description = params.fetch("query_description")
    the_meeting.is_virtual = params.fetch("query_is_virtual", false)
    the_meeting.title = params.fetch("query_title")
    the_meeting.start_time = params.fetch("query_start_time")
    the_meeting.end_time = params.fetch("query_end_time")
    the_meeting.chairperson_id = params.fetch("query_chairperson_id")
    the_meeting.is_private = params.fetch("query_is_private", false)
    the_meeting.is_event = params.fetch("query_is_event", false)

    if the_meeting.valid?
      the_meeting.save
      redirect_to("/meetings/#{the_meeting.id}", { :notice => "Meeting updated successfully."} )
    else
      redirect_to("/meetings/#{the_meeting.id}", { :alert => the_meeting.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_meeting = Meeting.where({ :id => the_id }).at(0)

    the_meeting.destroy

    redirect_to("/meetings", { :notice => "Meeting deleted successfully."} )
  end
end
