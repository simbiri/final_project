class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_users = User.where({ :id => the_id })

    @the_user = matching_users.at(0)

    render({ :template => "users/show" })
  end

  def create
    the_user = User.new
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.username = params.fetch("query_username")
    the_user.email = params.fetch("query_email")
    the_user.role = params.fetch("query_role")
    the_user.bio = params.fetch("query_bio")
    the_user.website_link = params.fetch("query_website_link")
    the_user.prof_picture_url = params.fetch("query_prof_picture_url")
    the_user.backg_picture_url = params.fetch("query_backg_picture_url")
    the_user.linked_in_url = params.fetch("query_linked_in_url")
    the_user.insta_url = params.fetch("query_insta_url")
    the_user.faceb_url = params.fetch("query_faceb_url")
    the_user.x_url = params.fetch("query_x_url")
    the_user.privacy_status = params.fetch("query_privacy_status", false)
    the_user.hierarchy_id = params.fetch("query_hierarchy_id")
    the_user.branch_id = params.fetch("query_branch_id")
    the_user.country_em = params.fetch("query_country_em")
    the_user.city_name = params.fetch("query_city_name")

    if the_user.valid?
      the_user.save
      redirect_to("/users", { :notice => "User created successfully." })
    else
      redirect_to("/users", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.username = params.fetch("query_username")
    the_user.email = params.fetch("query_email")
    the_user.role = params.fetch("query_role")
    the_user.bio = params.fetch("query_bio")
    the_user.website_link = params.fetch("query_website_link")
    the_user.prof_picture_url = params.fetch("query_prof_picture_url")
    the_user.backg_picture_url = params.fetch("query_backg_picture_url")
    the_user.linked_in_url = params.fetch("query_linked_in_url")
    the_user.insta_url = params.fetch("query_insta_url")
    the_user.faceb_url = params.fetch("query_faceb_url")
    the_user.x_url = params.fetch("query_x_url")
    the_user.privacy_status = params.fetch("query_privacy_status", false)
    the_user.hierarchy_id = params.fetch("query_hierarchy_id")
    the_user.branch_id = params.fetch("query_branch_id")
    the_user.country_em = params.fetch("query_country_em")
    the_user.city_name = params.fetch("query_city_name")

    if the_user.valid?
      the_user.save
      redirect_to("/users/#{the_user.id}", { :notice => "User updated successfully."} )
    else
      redirect_to("/users/#{the_user.id}", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.destroy

    redirect_to("/users", { :notice => "User deleted successfully."} )
  end
end
