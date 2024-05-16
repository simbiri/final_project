class PostAttachmentsController < ApplicationController
  def index
    matching_post_attachments = PostAttachment.all

    @list_of_post_attachments = matching_post_attachments.order({ :created_at => :desc })

    render({ :template => "post_attachments/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_post_attachments = PostAttachment.where({ :id => the_id })

    @the_post_attachment = matching_post_attachments.at(0)

    render({ :template => "post_attachments/show" })
  end

  def create
    the_post_attachment = PostAttachment.new
    the_post_attachment.post_id = params.fetch("query_post_id")
    the_post_attachment.file_url = params.fetch("query_file_url")
    the_post_attachment.file_type = params.fetch("query_file_type")

    if the_post_attachment.valid?
      the_post_attachment.save
      redirect_to("/post_attachments", { :notice => "Post attachment created successfully." })
    else
      redirect_to("/post_attachments", { :alert => the_post_attachment.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_post_attachment = PostAttachment.where({ :id => the_id }).at(0)

    the_post_attachment.post_id = params.fetch("query_post_id")
    the_post_attachment.file_url = params.fetch("query_file_url")
    the_post_attachment.file_type = params.fetch("query_file_type")

    if the_post_attachment.valid?
      the_post_attachment.save
      redirect_to("/post_attachments/#{the_post_attachment.id}", { :notice => "Post attachment updated successfully."} )
    else
      redirect_to("/post_attachments/#{the_post_attachment.id}", { :alert => the_post_attachment.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_post_attachment = PostAttachment.where({ :id => the_id }).at(0)

    the_post_attachment.destroy

    redirect_to("/post_attachments", { :notice => "Post attachment deleted successfully."} )
  end
end
