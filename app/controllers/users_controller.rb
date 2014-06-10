class UsersController < ApplicationController

  def show
    @user = User.find_by("id" => params["id"])
  end

  def create

    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil
      new = User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"],
                  "phone" => params["phone"])

      cookies["user_id"] = new["id"]

      redirect_to "/tasks"
    else
      @message = "Pick another username."
      render "new"
    end

  end

  def update

    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil

      the_user = User.find_by("id" => params["id"])
      the_user.update("username" => params["username"], "password" => params["password"], "name" => params["name"], "phone" => params["phone"])
      redirect_to "/users/#{the_user["id"]}"

    else
      @message = "Pick another username."
      render "edit"
    end
  end

end
