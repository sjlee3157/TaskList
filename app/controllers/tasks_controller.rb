class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)
  end

  def new
    @task = Task.new
  end

  def create
    # if empty params, render :new
    @task = Task.new(name: params[:task][:name],
                     description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

end
