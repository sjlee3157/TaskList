Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  # Why is it post '/tasks'? couldn't it be ANYTHING?

  patch '/tasks/:id', to: 'tasks#toggle_complete', as: 'toggle_task_complete'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  # Why is it patch /tasks/:id?

  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
