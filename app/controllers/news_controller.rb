class NewsController < ApplicationController
  def index
    matching_news = News.all

    @list_of_news = matching_news.order({ :created_at => :desc })

    render({ :template => "news/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_news = News.where({ :id => the_id })

    @the_news = matching_news.at(0)

    render({ :template => "news/show" })
  end

  def create
    the_news = News.new
    the_news.text_content = params.fetch("query_text_content")
    the_news.journalist_id = params.fetch("query_journalist_id")
    the_news.featuring_user_id = params.fetch("query_featuring_user_id")
    the_news.category = params.fetch("query_category")
    the_news.branch_id = params.fetch("query_branch_id")
    the_news.news_attachments_count = params.fetch("query_news_attachments_count")

    if the_news.valid?
      the_news.save
      redirect_to("/news", { :notice => "News created successfully." })
    else
      redirect_to("/news", { :alert => the_news.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_news = News.where({ :id => the_id }).at(0)

    the_news.text_content = params.fetch("query_text_content")
    the_news.journalist_id = params.fetch("query_journalist_id")
    the_news.featuring_user_id = params.fetch("query_featuring_user_id")
    the_news.category = params.fetch("query_category")
    the_news.branch_id = params.fetch("query_branch_id")
    the_news.news_attachments_count = params.fetch("query_news_attachments_count")

    if the_news.valid?
      the_news.save
      redirect_to("/news/#{the_news.id}", { :notice => "News updated successfully."} )
    else
      redirect_to("/news/#{the_news.id}", { :alert => the_news.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_news = News.where({ :id => the_id }).at(0)

    the_news.destroy

    redirect_to("/news", { :notice => "News deleted successfully."} )
  end
end
