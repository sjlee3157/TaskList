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
    name = params[:task][:name]
    description = params[:task][:description]
    if name == "" || description == ""
      render:new
    else
      @task = Task.new(name: name,
                       description: description)
    end
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

# for now, just edit the name, not the description
# the site should take the user back to the task's show page after the task is updated
  def edit
    id = params[:id].to_i
    @task = Task.find_by(id: id)
      # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  end

  def update
    id = params[:id].to_i
    @task = Task.find_by(id: id)
    new_name = params[:task][:name]
    new_decription = params[:task][:description]
# edge case: nil
    if @task.update(name: new_name, description: new_decription)
      redirect_to task_path(id)
    else
      render :edit
    end
      # patch '/tasks/:id', to: 'tasks#update', as: 'update_task'
  end

end
