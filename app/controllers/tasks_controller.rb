class TasksController < ApplicationController

  # Receive form submitted from /tasks/new
  def create
    Task.create("buyer_id" => cookies["user_id"], "description" => params["description"], "address" => params["address"], "start" => params["start"], "end" => params["end"], "price_in_cents" => params["price_in_cents"], "task_completion" => "0")
    redirect_to "/tasks/"
  end

  # Receive form submitted from /tasks/edit
  def update
    task = Task.find_by("id" => params["id"])
    if params["user_id"].present?
      task.update("seller_id" => params["user_id"])
    end
    if params["description"].present?
      task.update("description" => params["description"], "address" => params["address"], "start" => params["start"], "end" => params["end"], "price_in_cents" => params["price_in_cents"])
    end
    if params["task_completion"].present?
      task.update("task_completion" => params["task_completion"])
    end
    if params["ratingbyseller"].present?
      task.update("ratingbyseller" => params["ratingbyseller"], "commentbyseller" => params["commentbyseller"])
    end
    if params["ratingbybuyer"].present?
      task.update("ratingbybuyer" => params["ratingbybuyer"], "commentbybuyer" => params["commentbybuyer"])
    end
    redirect_to "/tasks/#{params["id"]}"
  end

  # Click Delete button in tasks/show or tasks/edit
  def destroy
    task = Task.find_by("id" => params["id"])
    task.delete
    redirect_to "/tasks"
  end

end
