class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
    @date = Time.now.to_date
  end

end
