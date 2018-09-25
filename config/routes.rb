Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  post '/tasks', to: 'tasks#create', as: 'create_task'
  patch '/tasks/:id/edit', to: 'tasks#update', as: 'update_task'
  patch '/tasks/:id', to: 'tasks#mark_unmark_complete', as: 'mark_unmark_task_complete'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

end

# what is the relationship between the model and the controller?
# can you refer to other models besides Task inside the TasksController?

# can/should I refactor to make both patch routes use the same route?
