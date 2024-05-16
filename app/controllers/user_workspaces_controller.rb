class UserWorkspacesController < ApplicationController
  def index
    matching_user_workspaces = UserWorkspace.all

    @list_of_user_workspaces = matching_user_workspaces.order({ :created_at => :desc })

    render({ :template => "user_workspaces/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_workspaces = UserWorkspace.where({ :id => the_id })

    @the_user_workspace = matching_user_workspaces.at(0)

    render({ :template => "user_workspaces/show" })
  end

  def create
    the_user_workspace = UserWorkspace.new
    the_user_workspace.user_id = params.fetch("query_user_id")
    the_user_workspace.workspace_id = params.fetch("query_workspace_id")
    the_user_workspace.role = params.fetch("query_role")

    if the_user_workspace.valid?
      the_user_workspace.save
      redirect_to("/user_workspaces", { :notice => "User workspace created successfully." })
    else
      redirect_to("/user_workspaces", { :alert => the_user_workspace.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user_workspace = UserWorkspace.where({ :id => the_id }).at(0)

    the_user_workspace.user_id = params.fetch("query_user_id")
    the_user_workspace.workspace_id = params.fetch("query_workspace_id")
    the_user_workspace.role = params.fetch("query_role")

    if the_user_workspace.valid?
      the_user_workspace.save
      redirect_to("/user_workspaces/#{the_user_workspace.id}", { :notice => "User workspace updated successfully."} )
    else
      redirect_to("/user_workspaces/#{the_user_workspace.id}", { :alert => the_user_workspace.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user_workspace = UserWorkspace.where({ :id => the_id }).at(0)

    the_user_workspace.destroy

    redirect_to("/user_workspaces", { :notice => "User workspace deleted successfully."} )
  end
end
