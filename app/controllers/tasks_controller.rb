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
    @message = "What should Dua Lipa do next?"
  end

  def create
    # other invalid params?
    name = params[:task][:name]
    description = params[:task][:description]
        # why params[:task]? is it because of how the form uses :model ?
    if name == "" || description == ""
      render:new
    else
      task = Task.new(name: name,
                       description: description)
    end
    if task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    id = params[:id].to_i
    @task = Task.find_by(id: id)
  end

  def update
    id = params[:id].to_i
    task = Task.find_by(id: id)
    new_name = params[:task][:name]
    new_decription = params[:task][:description]
# edge case: nil
    if task.update(name: new_name, description: new_decription)
      redirect_to task_path(id)
    else
      render :edit
    end
  end

  # def confirm_destroy
  #   id = params[:id].to_i
  #   @task = Task.find_by(id: id)
  # end

  def destroy
    id = params[:id].to_i
<<<<<<< HEAD
    task = Task.find_by(id: id)
    task.destroy
    redirect_to root_path
=======
    @task = Task.find_by(id: id)
    # if task.destroy
    #   redirect_to task_path(id)
    # else
    #   redirect_to root_path
    #   # error!
    # end
>>>>>>> fc0695f6caadea36910ec0407c3a8da1fa03b27f
  end

end
