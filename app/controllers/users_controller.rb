class UsersController < ApplicationController
  def index
    matching_users = User.all 
    @list_of_users =  matching_users.order ({ :username => :asc })

    render({ :template => "user_templates/index" })
  end

  def show
    url_username = params.fetch("path_username")

    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.first

    if @the_user == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show" })
    end
  end

  def create
    input_username = params.fetch("query_username")

    a_new_user = User.new
    a_new_user.username = input_username

    a_new_user.save

    redirect_to("/users/#{a_new_user.username}")

  end

  def update
    # debugger
    old_username = params.fetch("username")
    input_username = params.fetch("query_username")

    matching_users = User.where({ :username => old_username })

    @the_user = matching_users.at(0)

    @the_user.username = input_username

    @the_user.save

    redirect_to("/users/" + @the_user.username)
  end
end
