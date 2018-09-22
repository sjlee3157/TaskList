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
    if name == "" || description == ""
      render:new
      # what's the difference between render and redirect_to?
    else
      task = Task.new(name: name,
                      description: description)
    end
    if task.save
      redirect_to root_path, notice: "New task \"#{name}\" created."
    else
      render:new
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
      redirect_to task_path, notice: "Task edits saved for \"#{new_name}\"."
    else
      render :edit, notice: "Edits not saved for \"#{task.name}\"."
    end
  end

  def destroy
    id = params[:id].to_i
    task = Task.find_by(id: id)
    deleted_task = task.destroy
    redirect_to root_path, notice: "Task \"#{deleted_task.name}\" deleted."
  end

  def mark_unmark_complete
    id = params[:id].to_i
    task = Task.find_by(id: id)
    if task.completion_date == nil
      task.update(completion_date: Date.today)
      notice = "Congratulations! You completed \"#{task.name}\"!"
    else
      task.update(completion_date: nil)
    end
      redirect_to root_path
  end

end
