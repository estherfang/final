class MessagesController < ApplicationController

  def create
    Message.create("user_id" => params["user_id"], "task_id" => params["task_id"], "content" => params["message"])
    redirect_to "/tasks/#{params["task_id"]}"
  end

end
