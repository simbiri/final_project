class MeetingParticipantsController < ApplicationController
  def index
    matching_meeting_participants = MeetingParticipant.all

    @list_of_meeting_participants = matching_meeting_participants.order({ :created_at => :desc })

    render({ :template => "meeting_participants/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_meeting_participants = MeetingParticipant.where({ :id => the_id })

    @the_meeting_participant = matching_meeting_participants.at(0)

    render({ :template => "meeting_participants/show" })
  end

  def create
    the_meeting_participant = MeetingParticipant.new
    the_meeting_participant.meeting_id = params.fetch("query_meeting_id")
    the_meeting_participant.participant_id = params.fetch("query_participant_id")
    the_meeting_participant.status = params.fetch("query_status")
    the_meeting_participant.role = params.fetch("query_role")

    if the_meeting_participant.valid?
      the_meeting_participant.save
      redirect_to("/meeting_participants", { :notice => "Meeting participant created successfully." })
    else
      redirect_to("/meeting_participants", { :alert => the_meeting_participant.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_meeting_participant = MeetingParticipant.where({ :id => the_id }).at(0)

    the_meeting_participant.meeting_id = params.fetch("query_meeting_id")
    the_meeting_participant.participant_id = params.fetch("query_participant_id")
    the_meeting_participant.status = params.fetch("query_status")
    the_meeting_participant.role = params.fetch("query_role")

    if the_meeting_participant.valid?
      the_meeting_participant.save
      redirect_to("/meeting_participants/#{the_meeting_participant.id}", { :notice => "Meeting participant updated successfully."} )
    else
      redirect_to("/meeting_participants/#{the_meeting_participant.id}", { :alert => the_meeting_participant.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_meeting_participant = MeetingParticipant.where({ :id => the_id }).at(0)

    the_meeting_participant.destroy

    redirect_to("/meeting_participants", { :notice => "Meeting participant deleted successfully."} )
  end
end
