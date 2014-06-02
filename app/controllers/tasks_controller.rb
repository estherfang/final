class TasksController < ApplicationController

  # Receive form submitted from /tasks/new
  def create
    Task.create("description" => params["description"], "address" => params["address"], "start" => params["start"], "end" => params["end"], "price_in_cents" => params["price_in_cents"])
    redirect_to "/tasks/"
  end

  # Receive form submitted from /tasks/edit
  def update
    task = Task.find_by("id" => params["id"])
    task.update("description" => params["description"], "address" => params["address"], "start" => params["start"], "end" => params["end"], "price_in_cents" => params["price_in_cents"])
    redirect_to "/tasks/"
  end

  # Click Delete button in tasks/edit
  def destroy
    task = Task.find_by("id" => params["id"])
    task.delete
    redirect_to "/tasks"
  end

end
