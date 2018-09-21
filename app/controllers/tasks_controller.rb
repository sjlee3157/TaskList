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
    # other invalid params?
    if params[:task][:name] == "" || params[:task][:description] == ""
      render:new
    else
      @task = Task.new(name: params[:task][:name],
                       description: params[:task][:description])
    end
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

end
