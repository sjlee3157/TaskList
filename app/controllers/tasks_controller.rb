class TasksController < ApplicationController

# TASKS = [
#   {id: 1, title: "Don't pick up the phone, you know he's only calling cause he's drunk and alone", status: :not_done},
#   {id: 2, title: "Don't let him in, you'll have to kick him out again", status: :not_done},
#   {id: 3, title: "Don't be his friend, you know you're gonna wake up in his bed in the morning", status: :not_done}
# ]

  def index
    @tasks = Task.all.order(:id)
    @date = Time.now.to_date
  end

end
