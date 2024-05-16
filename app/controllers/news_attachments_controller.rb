class NewsAttachmentsController < ApplicationController
  def index
    matching_news_attachments = NewsAttachment.all

    @list_of_news_attachments = matching_news_attachments.order({ :created_at => :desc })

    render({ :template => "news_attachments/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_news_attachments = NewsAttachment.where({ :id => the_id })

    @the_news_attachment = matching_news_attachments.at(0)

    render({ :template => "news_attachments/show" })
  end

  def create
    the_news_attachment = NewsAttachment.new
    the_news_attachment.news_id = params.fetch("query_news_id")
    the_news_attachment.file_url = params.fetch("query_file_url")
    the_news_attachment.filetype = params.fetch("query_filetype")

    if the_news_attachment.valid?
      the_news_attachment.save
      redirect_to("/news_attachments", { :notice => "News attachment created successfully." })
    else
      redirect_to("/news_attachments", { :alert => the_news_attachment.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_news_attachment = NewsAttachment.where({ :id => the_id }).at(0)

    the_news_attachment.news_id = params.fetch("query_news_id")
    the_news_attachment.file_url = params.fetch("query_file_url")
    the_news_attachment.filetype = params.fetch("query_filetype")

    if the_news_attachment.valid?
      the_news_attachment.save
      redirect_to("/news_attachments/#{the_news_attachment.id}", { :notice => "News attachment updated successfully."} )
    else
      redirect_to("/news_attachments/#{the_news_attachment.id}", { :alert => the_news_attachment.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_news_attachment = NewsAttachment.where({ :id => the_id }).at(0)

    the_news_attachment.destroy

    redirect_to("/news_attachments", { :notice => "News attachment deleted successfully."} )
  end
end
