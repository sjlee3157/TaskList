Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  # Why is it post '/tasks'? couldn't it be ANYTHING?

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  # How does this patch path work?
  # does the order of stuff in here matter or something?
  # so confused
  # does :id come from the params memory or something?

# we have to pass :id to this route, or else the delete route won't have it.
  # get '/tasks/:id/confirm_destroy', to: 'tasks#confirm_destroy', as: 'confirm_destroy_task'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'


  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
