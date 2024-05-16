class MessageAttachmentsController < ApplicationController
  def index
    matching_message_attachments = MessageAttachment.all

    @list_of_message_attachments = matching_message_attachments.order({ :created_at => :desc })

    render({ :template => "message_attachments/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_message_attachments = MessageAttachment.where({ :id => the_id })

    @the_message_attachment = matching_message_attachments.at(0)

    render({ :template => "message_attachments/show" })
  end

  def create
    the_message_attachment = MessageAttachment.new
    the_message_attachment.message_id = params.fetch("query_message_id")
    the_message_attachment.file_url = params.fetch("query_file_url")
    the_message_attachment.file_type = params.fetch("query_file_type")

    if the_message_attachment.valid?
      the_message_attachment.save
      redirect_to("/message_attachments", { :notice => "Message attachment created successfully." })
    else
      redirect_to("/message_attachments", { :alert => the_message_attachment.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_message_attachment = MessageAttachment.where({ :id => the_id }).at(0)

    the_message_attachment.message_id = params.fetch("query_message_id")
    the_message_attachment.file_url = params.fetch("query_file_url")
    the_message_attachment.file_type = params.fetch("query_file_type")

    if the_message_attachment.valid?
      the_message_attachment.save
      redirect_to("/message_attachments/#{the_message_attachment.id}", { :notice => "Message attachment updated successfully."} )
    else
      redirect_to("/message_attachments/#{the_message_attachment.id}", { :alert => the_message_attachment.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_message_attachment = MessageAttachment.where({ :id => the_id }).at(0)

    the_message_attachment.destroy

    redirect_to("/message_attachments", { :notice => "Message attachment deleted successfully."} )
  end
end
