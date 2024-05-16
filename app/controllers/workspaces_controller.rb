class WorkspacesController < ApplicationController
  def index
    matching_workspaces = Workspace.all

    @list_of_workspaces = matching_workspaces.order({ :created_at => :desc })

    render({ :template => "workspaces/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_workspaces = Workspace.where({ :id => the_id })

    @the_workspace = matching_workspaces.at(0)

    render({ :template => "workspaces/show" })
  end

  def create
    the_workspace = Workspace.new
    the_workspace.image_url = params.fetch("query_image_url")
    the_workspace.title = params.fetch("query_title")
    the_workspace.short_description = params.fetch("query_short_description")
    the_workspace.users_count = params.fetch("query_users_count")
    the_workspace.messages_count = params.fetch("query_messages_count")

    if the_workspace.valid?
      the_workspace.save
      redirect_to("/workspaces", { :notice => "Workspace created successfully." })
    else
      redirect_to("/workspaces", { :alert => the_workspace.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_workspace = Workspace.where({ :id => the_id }).at(0)

    the_workspace.image_url = params.fetch("query_image_url")
    the_workspace.title = params.fetch("query_title")
    the_workspace.short_description = params.fetch("query_short_description")
    the_workspace.users_count = params.fetch("query_users_count")
    the_workspace.messages_count = params.fetch("query_messages_count")

    if the_workspace.valid?
      the_workspace.save
      redirect_to("/workspaces/#{the_workspace.id}", { :notice => "Workspace updated successfully."} )
    else
      redirect_to("/workspaces/#{the_workspace.id}", { :alert => the_workspace.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_workspace = Workspace.where({ :id => the_id }).at(0)

    the_workspace.destroy

    redirect_to("/workspaces", { :notice => "Workspace deleted successfully."} )
  end
end
