class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)
  end

end
