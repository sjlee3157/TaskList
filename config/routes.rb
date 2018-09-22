Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks/new', to: 'tasks#create', as: 'create_task'
  # Why is it post '/tasks'? couldn't it be ANYTHING?

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id/edit', to: 'tasks#update', as: 'update_task'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  patch '/tasks/:id', to: 'tasks#mark_unmark_complete', as: 'mark_unmark_task_complete'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
